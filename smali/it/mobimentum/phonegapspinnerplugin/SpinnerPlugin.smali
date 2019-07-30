.class public Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "SpinnerPlugin.java"


# static fields
.field private static final PARAM_IS_FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field private static final PARAM_SHOW_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final PARAM_SHOW_TIMEOUT:Ljava/lang/String; = "timeout"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;->hide(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method private hide(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ProgressActivity.ACTION_HIDE_PROGRESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 75
    return v2
.end method

.method private show(Landroid/app/Activity;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Z
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "showOverlay"    # Ljava/lang/Boolean;
    .param p3, "hideTimeout"    # Ljava/lang/Integer;
    .param p4, "isFullscreen"    # Ljava/lang/Boolean;

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    const-string v1, "ProgressActivity.EXTRA_SHOW_OVERLAY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 56
    :cond_0
    if-eqz p4, :cond_1

    const-string v1, "ProgressActivity.EXTRA_IS_FULLSCREEN"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 57
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    if-eqz p3, :cond_2

    .line 60
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin$1;

    invoke-direct {v2, p0, p1}, Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin$1;-><init>(Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;Landroid/app/Activity;)V

    .line 63
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    .line 60
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    :cond_2
    const/4 v1, 0x1

    return v1
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
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 24
    iget-object v6, p0, Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 26
    .local v1, "context":Landroid/app/Activity;
    const-string v6, "show"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 30
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 31
    .local v0, "argsObj":Lorg/json/JSONObject;
    const-string v6, "overlay"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "overlay"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 32
    .local v4, "showOverlay":Ljava/lang/Boolean;
    :goto_0
    const-string v6, "timeout"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "timeout"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 33
    .local v2, "hideTimeout":Ljava/lang/Integer;
    :goto_1
    const-string v6, "fullscreen"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "fullscreen"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 36
    .local v3, "isFullscreen":Ljava/lang/Boolean;
    :goto_2
    invoke-direct {p0, v1, v4, v2, v3}, Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;->show(Landroid/app/Activity;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Z

    .line 38
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 47
    .end local v0    # "argsObj":Lorg/json/JSONObject;
    .end local v2    # "hideTimeout":Ljava/lang/Integer;
    .end local v3    # "isFullscreen":Ljava/lang/Boolean;
    .end local v4    # "showOverlay":Ljava/lang/Boolean;
    :cond_0
    :goto_3
    const-string v5, "Invalid action"

    invoke-virtual {p3, v5}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 49
    return v7

    .restart local v0    # "argsObj":Lorg/json/JSONObject;
    :cond_1
    move-object v4, v5

    .line 31
    goto :goto_0

    .restart local v4    # "showOverlay":Ljava/lang/Boolean;
    :cond_2
    move-object v2, v5

    .line 32
    goto :goto_1

    .restart local v2    # "hideTimeout":Ljava/lang/Integer;
    :cond_3
    move-object v3, v5

    .line 33
    goto :goto_2

    .line 40
    .end local v0    # "argsObj":Lorg/json/JSONObject;
    .end local v2    # "hideTimeout":Ljava/lang/Integer;
    .end local v4    # "showOverlay":Ljava/lang/Boolean;
    :cond_4
    const-string v5, "hide"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    invoke-direct {p0, v1}, Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;->hide(Landroid/app/Activity;)Z

    .line 44
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_3
.end method
