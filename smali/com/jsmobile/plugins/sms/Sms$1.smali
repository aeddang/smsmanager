.class Lcom/jsmobile/plugins/sms/Sms$1;
.super Landroid/content/BroadcastReceiver;
.source "Sms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jsmobile/plugins/sms/Sms;->sendSMS(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jsmobile/plugins/sms/Sms;

.field private final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/jsmobile/plugins/sms/Sms;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jsmobile/plugins/sms/Sms$1;->this$0:Lcom/jsmobile/plugins/sms/Sms;

    iput-object p2, p0, Lcom/jsmobile/plugins/sms/Sms$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/jsmobile/plugins/sms/Sms$1;->getResultCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 80
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v0, "errorObject":Lorg/json/JSONObject;
    const-string v2, "code"

    const-string v3, "SMS_GENERAL_ERROR"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v2, "message"

    const-string v3, "SMS general error"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    iget-object v2, p0, Lcom/jsmobile/plugins/sms/Sms$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v3, v4, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v0    # "errorObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 64
    :sswitch_0
    iget-object v2, p0, Lcom/jsmobile/plugins/sms/Sms$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const-string v5, "SMS message is sent successfully"

    invoke-direct {v3, v4, v5}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 68
    :sswitch_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .restart local v0    # "errorObject":Lorg/json/JSONObject;
    const-string v2, "code"

    const-string v3, "NO_SMS_SERVICE_AVAILABLE"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v2, "message"

    const-string v3, "SMS is not sent because no service is available"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    iget-object v2, p0, Lcom/jsmobile/plugins/sms/Sms$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v3, v4, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "errorObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "exception":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v1    # "exception":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 87
    .restart local v1    # "exception":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 62
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method
