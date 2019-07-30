.class Lorg/apache/cordova/dialogs/Notification$2;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/dialogs/Notification;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/dialogs/Notification;

.field private final synthetic val$buttonLabel:Ljava/lang/String;

.field private final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field private final synthetic val$cordova:Lorg/apache/cordova/CordovaInterface;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/dialogs/Notification$2;->this$0:Lorg/apache/cordova/dialogs/Notification;

    iput-object p2, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    iput-object p3, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$buttonLabel:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 160
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 161
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 162
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 163
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 164
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$buttonLabel:Ljava/lang/String;

    .line 165
    new-instance v4, Lorg/apache/cordova/dialogs/Notification$2$1;

    iget-object v5, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v4, p0, v5}, Lorg/apache/cordova/dialogs/Notification$2$1;-><init>(Lorg/apache/cordova/dialogs/Notification$2;Lorg/apache/cordova/CallbackContext;)V

    .line 164
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    new-instance v3, Lorg/apache/cordova/dialogs/Notification$2$2;

    iget-object v4, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v3, p0, v4}, Lorg/apache/cordova/dialogs/Notification$2$2;-><init>(Lorg/apache/cordova/dialogs/Notification$2;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 180
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 181
    .local v0, "dialog":Landroid/app/AlertDialog;
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 182
    .local v2, "messageview":Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 183
    return-void
.end method
