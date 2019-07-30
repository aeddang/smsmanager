.class Lorg/apache/cordova/dialogs/Notification$4;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/dialogs/Notification;->prompt(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
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

.field private final synthetic val$defaultText:Ljava/lang/String;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/dialogs/Notification$4;->this$0:Lorg/apache/cordova/dialogs/Notification;

    iput-object p2, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    iput-object p3, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$defaultText:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$message:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$buttonLabels:Lorg/json/JSONArray;

    iput-object p7, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 281
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 282
    .local v3, "promptInput":Landroid/widget/EditText;
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$defaultText:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 283
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 284
    .local v7, "dlg":Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$message:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 285
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$title:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 286
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 290
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 293
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 295
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 296
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$4$1;

    iget-object v4, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$defaultText:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification$4$1;-><init>(Lorg/apache/cordova/dialogs/Notification$4;Lorg/json/JSONObject;Landroid/widget/EditText;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 295
    invoke-virtual {v7, v9, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 310
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v10, :cond_1

    .line 312
    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 313
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$4$2;

    iget-object v4, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$defaultText:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification$4$2;-><init>(Lorg/apache/cordova/dialogs/Notification$4;Lorg/json/JSONObject;Landroid/widget/EditText;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 312
    invoke-virtual {v7, v9, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v11, :cond_2

    .line 329
    :try_start_2
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 330
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$4$3;

    iget-object v4, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$defaultText:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification$4$3;-><init>(Lorg/apache/cordova/dialogs/Notification$4;Lorg/json/JSONObject;Landroid/widget/EditText;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 329
    invoke-virtual {v7, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 342
    :cond_2
    :goto_2
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$4$4;

    iget-object v4, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$defaultText:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/cordova/dialogs/Notification$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification$4$4;-><init>(Lorg/apache/cordova/dialogs/Notification$4;Lorg/json/JSONObject;Landroid/widget/EditText;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 354
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    .line 355
    .local v6, "dialog":Landroid/app/AlertDialog;
    const v0, 0x102000b

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 356
    .local v8, "messageview":Landroid/widget/TextView;
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 357
    return-void

    .line 340
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    .end local v8    # "messageview":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 323
    :catch_1
    move-exception v0

    goto :goto_1

    .line 306
    :catch_2
    move-exception v0

    goto :goto_0
.end method
