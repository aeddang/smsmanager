.class public Lcom/allabyu/sms_manager/CordovaApp;
.super Lorg/apache/cordova/CordovaActivity;
.source "CordovaApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/cordova/CordovaActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/allabyu/sms_manager/CordovaApp;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 37
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->init()V

    .line 40
    iget-object v1, p0, Lcom/allabyu/sms_manager/CordovaApp;->launchUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/allabyu/sms_manager/CordovaApp;->loadUrl(Ljava/lang/String;)V

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Lcom/allabyu/sms_manager/CordovaApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
