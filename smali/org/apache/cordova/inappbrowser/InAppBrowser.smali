.class public Lorg/apache/cordova/inappbrowser/InAppBrowser;
.super Lorg/apache/cordova/CordovaPlugin;
.source "InAppBrowser.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;
    }
.end annotation


# static fields
.field private static final CLEAR_ALL_CACHE:Ljava/lang/String; = "clearcache"

.field private static final CLEAR_SESSION_CACHE:Ljava/lang/String; = "clearsessioncache"

.field private static final CLOSE_BUTTON_CAPTION:Ljava/lang/String; = "closebuttoncaption"

.field private static final EXIT_EVENT:Ljava/lang/String; = "exit"

.field private static final HIDDEN:Ljava/lang/String; = "hidden"

.field private static final LOAD_ERROR_EVENT:Ljava/lang/String; = "loaderror"

.field private static final LOAD_START_EVENT:Ljava/lang/String; = "loadstart"

.field private static final LOAD_STOP_EVENT:Ljava/lang/String; = "loadstop"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field protected static final LOG_TAG:Ljava/lang/String; = "InAppBrowser"

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final SELF:Ljava/lang/String; = "_self"

.field private static final SYSTEM:Ljava/lang/String; = "_system"


# instance fields
.field private buttonLabel:Ljava/lang/String;

.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private clearAllCache:Z

.field private clearSessionCache:Z

.field private dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

.field private edittext:Landroid/widget/EditText;

.field private inAppWebView:Landroid/webkit/WebView;

.field private openWindowHidden:Z

.field private showLocationBar:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    .line 87
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    .line 88
    const-string v0, "Done"

    iput-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->buttonLabel:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    .line 90
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    .line 65
    return-void
.end method

.method static synthetic access$0(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;Z)V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V
    .locals 0

    .prologue
    .line 676
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V

    return-void
.end method

.method static synthetic access$10(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->navigate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$12(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    return v0
.end method

.method static synthetic access$13(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    return v0
.end method

.method static synthetic access$14(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->getShowLocationBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    return v0
.end method

.method static synthetic access$2(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$4(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    return-void
.end method

.method static synthetic access$5(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->getInAppBrowser()Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->goBack()V

    return-void
.end method

.method static synthetic access$7(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->goForward()V

    return-void
.end method

.method static synthetic access$8(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$9(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method private getInAppBrowser()Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .locals 0

    .prologue
    .line 412
    return-object p0
.end method

.method private getShowLocationBar()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    return v0
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 373
    :cond_0
    return-void
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 382
    :cond_0
    return-void
.end method

.method private injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "jsWrapper"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 249
    if-eqz p2, :cond_0

    .line 250
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 251
    .local v1, "jsonEsc":Lorg/json/JSONArray;
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 252
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "jsonRepr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "jsonSourceString":Ljava/lang/String;
    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .end local v1    # "jsonEsc":Lorg/json/JSONArray;
    .end local v2    # "jsonRepr":Ljava/lang/String;
    .end local v3    # "jsonSourceString":Ljava/lang/String;
    .local v4, "scriptToInject":Ljava/lang/String;
    :goto_0
    move-object v0, v4

    .line 259
    .local v0, "finalScriptToInject":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lorg/apache/cordova/inappbrowser/InAppBrowser$3;

    invoke-direct {v6, p0, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$3;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    return-void

    .line 256
    .end local v0    # "finalScriptToInject":Ljava/lang/String;
    .end local v4    # "scriptToInject":Ljava/lang/String;
    :cond_0
    move-object v4, p1

    .restart local v4    # "scriptToInject":Ljava/lang/String;
    goto :goto_0
.end method

.method private navigate(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 391
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 393
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 398
    :goto_0
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 399
    return-void

    .line 396
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseFeature(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "optString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    const-string v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 281
    const/4 v2, 0x0

    .line 298
    :cond_0
    return-object v2

    .line 283
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 284
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v0, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v0, "features":Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .local v3, "option":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "key":Ljava/lang/String;
    const-string v5, "closebuttoncaption"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 291
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->buttonLabel:Ljava/lang/String;

    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 294
    .local v4, "value":Ljava/lang/Boolean;
    :goto_1
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 293
    .end local v4    # "value":Ljava/lang/Boolean;
    :cond_4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private sendUpdate(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z

    .prologue
    .line 667
    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V

    .line 668
    return-void
.end method

.method private sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z
    .param p3, "status"    # Lorg/apache/cordova/PluginResult$Status;

    .prologue
    .line 677
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_0

    .line 678
    new-instance v0, Lorg/apache/cordova/PluginResult;

    invoke-direct {v0, p3, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 679
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v0, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 680
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 681
    if-nez p2, :cond_0

    .line 682
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 685
    .end local v0    # "result":Lorg/apache/cordova/PluginResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 5

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    .line 336
    .local v0, "childView":Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;

    invoke-direct {v4, p0, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/WebView;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 358
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 359
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "type"

    const-string v4, "exit"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 362
    .local v1, "ex":Lorg/json/JSONException;
    const-string v3, "InAppBrowser"

    const-string v4, "Should never happen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 101
    const-string v1, "open"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    iput-object p3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 103
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "t":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    const-string v8, "_self"

    .line 108
    :cond_1
    move-object v2, v8

    .line 109
    .local v2, "target":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->parseFeature(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 111
    .local v4, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v0, "InAppBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "target = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$1;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/inappbrowser/InAppBrowser$1;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v8    # "t":Ljava/lang/String;
    :goto_0
    move v0, v9

    .line 212
    :cond_2
    return v0

    .line 161
    :cond_3
    const-string v1, "close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    goto :goto_0

    .line 164
    :cond_4
    const-string v1, "injectScriptCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 165
    const/4 v6, 0x0

    .line 166
    .local v6, "jsWrapper":Ljava/lang/String;
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 167
    const-string v1, "prompt(JSON.stringify([eval(%%s)]), \'gap-iab://%s\')"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 169
    :cond_5
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_6
    const-string v1, "injectScriptFile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 173
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 174
    const-string v1, "(function(d) { var c = d.createElement(\'script\'); c.src = %%s; c.onload = function() { prompt(\'\', \'gap-iab://%s\'); }; d.body.appendChild(c); })(document)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 178
    .restart local v6    # "jsWrapper":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_7
    const-string v6, "(function(d) { var c = d.createElement(\'script\'); c.src = %s; d.body.appendChild(c); })(document)"

    .restart local v6    # "jsWrapper":Ljava/lang/String;
    goto :goto_1

    .line 180
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_8
    const-string v1, "injectStyleCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 182
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 183
    const-string v1, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %%s; d.body.appendChild(c); prompt(\'\', \'gap-iab://%s\');})(document)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 187
    .restart local v6    # "jsWrapper":Ljava/lang/String;
    :goto_2
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_9
    const-string v6, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %s; d.body.appendChild(c); })(document)"

    .restart local v6    # "jsWrapper":Ljava/lang/String;
    goto :goto_2

    .line 189
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_a
    const-string v1, "injectStyleFile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 191
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 192
    const-string v1, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %%s; d.head.appendChild(c); prompt(\'\', \'gap-iab://%s\');})(document)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 196
    .restart local v6    # "jsWrapper":Ljava/lang/String;
    :goto_3
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_b
    const-string v6, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %s; d.head.appendChild(c); })(document)"

    .restart local v6    # "jsWrapper":Ljava/lang/String;
    goto :goto_3

    .line 198
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_c
    const-string v1, "show"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;

    invoke-direct {v1, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    new-instance v7, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v7, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 206
    .local v7, "pluginResult":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v7, v9}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 207
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v7}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    .line 229
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    .line 221
    return-void
.end method

.method public openExternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 315
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 316
    .local v3, "uri":Landroid/net/Uri;
    const-string v4, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v4}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/cordova/CordovaResourceApi;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    :goto_0
    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    const-string v4, ""

    .line 325
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_1
    return-object v4

    .line 319
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_0
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 323
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 324
    .end local v2    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_2
    const-string v4, "InAppBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InAppBrowser: Error loading url "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 323
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 423
    .local p2, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    .line 424
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    .line 425
    if-eqz p2, :cond_2

    .line 426
    const-string v5, "location"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 427
    .local v3, "show":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 428
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    .line 430
    :cond_0
    const-string v5, "hidden"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 431
    .local v1, "hidden":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 432
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    .line 434
    :cond_1
    const-string v5, "clearcache"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 435
    .local v0, "cache":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    .line 436
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    .line 445
    .end local v0    # "cache":Ljava/lang/Boolean;
    .end local v1    # "hidden":Ljava/lang/Boolean;
    .end local v3    # "show":Ljava/lang/Boolean;
    :cond_2
    :goto_0
    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 448
    .local v4, "thatWebView":Lorg/apache/cordova/CordovaWebView;
    new-instance v2, Lorg/apache/cordova/inappbrowser/InAppBrowser$5;

    invoke-direct {v2, p0, p1, v4}, Lorg/apache/cordova/inappbrowser/InAppBrowser$5;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 657
    .local v2, "runnable":Ljava/lang/Runnable;
    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 658
    const-string v5, ""

    return-object v5

    .line 438
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v4    # "thatWebView":Lorg/apache/cordova/CordovaWebView;
    .restart local v0    # "cache":Ljava/lang/Boolean;
    .restart local v1    # "hidden":Ljava/lang/Boolean;
    .restart local v3    # "show":Ljava/lang/Boolean;
    :cond_3
    const-string v5, "clearsessioncache"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cache":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 439
    .restart local v0    # "cache":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 440
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    goto :goto_0
.end method
