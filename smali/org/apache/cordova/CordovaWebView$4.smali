.class Lorg/apache/cordova/CordovaWebView$4;
.super Ljava/lang/Object;
.source "CordovaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaWebView;->loadUrlIntoView(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/CordovaWebView;

.field private final synthetic val$me:Lorg/apache/cordova/CordovaWebView;

.field private final synthetic val$timeoutCheck:Ljava/lang/Runnable;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaWebView;Ljava/lang/Runnable;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView$4;->this$0:Lorg/apache/cordova/CordovaWebView;

    iput-object p2, p0, Lorg/apache/cordova/CordovaWebView$4;->val$timeoutCheck:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/apache/cordova/CordovaWebView$4;->val$me:Lorg/apache/cordova/CordovaWebView;

    iput-object p4, p0, Lorg/apache/cordova/CordovaWebView$4;->val$url:Ljava/lang/String;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView$4;->this$0:Lorg/apache/cordova/CordovaWebView;

    invoke-static {v0}, Lorg/apache/cordova/CordovaWebView;->access$0(Lorg/apache/cordova/CordovaWebView;)Lorg/apache/cordova/CordovaInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView$4;->val$timeoutCheck:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 424
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView$4;->val$me:Lorg/apache/cordova/CordovaWebView;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrlNow(Ljava/lang/String;)V

    .line 425
    return-void
.end method
