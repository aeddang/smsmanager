.class Lorg/apache/cordova/inappbrowser/InAppBrowser$5$3;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/inappbrowser/InAppBrowser$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$5;


# direct methods
.method constructor <init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$5$3;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$5;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 557
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 558
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$5$3;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$5;

    invoke-static {v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$5;->access$0(Lorg/apache/cordova/inappbrowser/InAppBrowser$5;)Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$5$3;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$5;

    invoke-static {v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$5;->access$0(Lorg/apache/cordova/inappbrowser/InAppBrowser$5;)Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$9(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$10(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;)V

    .line 559
    const/4 v0, 0x1

    .line 561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
