.class public Lcom/jsmobile/plugins/sms/Sms;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Sms.java"


# static fields
.field private static final NO_SMS_SERVICE_AVAILABLE:Ljava/lang/String; = "NO_SMS_SERVICE_AVAILABLE"

.field private static final SENDING_SMS_ID:Ljava/lang/String; = "SENDING_SMS"

.field private static final SMS_FEATURE_NOT_SUPPORTED:Ljava/lang/String; = "SMS_FEATURE_NOT_SUPPORTED"

.field private static final SMS_GENERAL_ERROR:Ljava/lang/String; = "SMS_GENERAL_ERROR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jsmobile/plugins/sms/Sms;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private sendSMS(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 7
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 57
    invoke-direct {p0}, Lcom/jsmobile/plugins/sms/Sms;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v5, "SENDING_SMS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 59
    .local v4, "sentPI":Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/jsmobile/plugins/sms/Sms;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lcom/jsmobile/plugins/sms/Sms$1;

    invoke-direct {v3, p0, p3}, Lcom/jsmobile/plugins/sms/Sms$1;-><init>(Lcom/jsmobile/plugins/sms/Sms;Lorg/apache/cordova/CallbackContext;)V

    .line 93
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "SENDING_SMS"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v3, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, "sms":Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    .line 97
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 98
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    const-string v6, "sendMessage"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 33
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "phoneNumber":Ljava/lang/String;
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "message":Ljava/lang/String;
    invoke-direct {p0}, Lcom/jsmobile/plugins/sms/Sms;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 38
    .local v1, "isSupported":Z
    if-nez v1, :cond_1

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v0, "errorObject":Lorg/json/JSONObject;
    const-string v5, "code"

    const-string v6, "SMS_FEATURE_NOT_SUPPORTED"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v5, "message"

    const-string v6, "SMS feature is not supported on this device"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v5, v6, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p3, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 53
    .end local v0    # "errorObject":Lorg/json/JSONObject;
    .end local v1    # "isSupported":Z
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "phoneNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 48
    .restart local v1    # "isSupported":Z
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "phoneNumber":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3, v2, p3}, Lcom/jsmobile/plugins/sms/Sms;->sendSMS(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move v4, v5

    .line 50
    goto :goto_0
.end method
