.class Lorg/apache/cordova/inappbrowser/InAppBrowser$4;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

.field private final synthetic val$childView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iput-object p2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;->val$childView:Landroid/webkit/WebView;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/cordova/inappbrowser/InAppBrowser$4;)Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;->val$childView:Landroid/webkit/WebView;

    new-instance v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$4$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$4$1;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$4;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 353
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;->val$childView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 354
    return-void
.end method
