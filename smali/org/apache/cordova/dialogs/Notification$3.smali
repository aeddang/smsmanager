.class Lorg/apache/cordova/dialogs/Notification$3;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/dialogs/Notification;->confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/dialogs/Notification;

.field private final synthetic val$buttonLabels:Lorg/json/JSONArray;

.field private final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field private final synthetic val$cordova:Lorg/apache/cordova/CordovaInterface;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/dialogs/Notification$3;->this$0:Lorg/apache/cordova/dialogs/Notification;

    iput-object p2, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    iput-object p3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    iput-object p6, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 203
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 204
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 205
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 209
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 211
    :try_start_0
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 212
    new-instance v4, Lorg/apache/cordova/dialogs/Notification$3$1;

    iget-object v5, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v4, p0, v5}, Lorg/apache/cordova/dialogs/Notification$3$1;-><init>(Lorg/apache/cordova/dialogs/Notification$3;Lorg/apache/cordova/CallbackContext;)V

    .line 211
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 222
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 224
    :try_start_1
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    new-instance v4, Lorg/apache/cordova/dialogs/Notification$3$2;

    iget-object v5, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v4, p0, v5}, Lorg/apache/cordova/dialogs/Notification$3$2;-><init>(Lorg/apache/cordova/dialogs/Notification$3;Lorg/apache/cordova/CallbackContext;)V

    .line 224
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-le v3, v7, :cond_2

    .line 237
    :try_start_2
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 238
    new-instance v4, Lorg/apache/cordova/dialogs/Notification$3$3;

    iget-object v5, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v4, p0, v5}, Lorg/apache/cordova/dialogs/Notification$3$3;-><init>(Lorg/apache/cordova/dialogs/Notification$3;Lorg/apache/cordova/CallbackContext;)V

    .line 237
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
    :cond_2
    :goto_2
    new-instance v3, Lorg/apache/cordova/dialogs/Notification$3$4;

    iget-object v4, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v3, p0, v4}, Lorg/apache/cordova/dialogs/Notification$3$4;-><init>(Lorg/apache/cordova/dialogs/Notification$3;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 255
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 256
    .local v0, "dialog":Landroid/app/AlertDialog;
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 257
    .local v2, "messageview":Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 258
    return-void

    .line 244
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "messageview":Landroid/widget/TextView;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 231
    :catch_1
    move-exception v3

    goto :goto_1

    .line 218
    :catch_2
    move-exception v3

    goto :goto_0
.end method
