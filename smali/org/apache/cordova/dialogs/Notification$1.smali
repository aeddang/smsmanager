.class Lorg/apache/cordova/dialogs/Notification$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/dialogs/Notification;->beep(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/dialogs/Notification;

.field private final synthetic val$count:J


# direct methods
.method constructor <init>(Lorg/apache/cordova/dialogs/Notification;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/dialogs/Notification$1;->this$0:Lorg/apache/cordova/dialogs/Notification;

    iput-wide p2, p0, Lorg/apache/cordova/dialogs/Notification$1;->val$count:J

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    .line 126
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 127
    .local v3, "ringtone":Landroid/net/Uri;
    iget-object v6, p0, Lorg/apache/cordova/dialogs/Notification$1;->this$0:Lorg/apache/cordova/dialogs/Notification;

    iget-object v6, v6, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 130
    .local v2, "notification":Landroid/media/Ringtone;
    if-eqz v2, :cond_0

    .line 131
    const-wide/16 v0, 0x0

    .local v0, "i":J
    :goto_0
    iget-wide v6, p0, Lorg/apache/cordova/dialogs/Notification$1;->val$count:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_1

    .line 143
    .end local v0    # "i":J
    :cond_0
    return-void

    .line 132
    .restart local v0    # "i":J
    :cond_1
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 133
    const-wide/16 v4, 0x1388

    .line 134
    .local v4, "timeout":J
    :goto_1
    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_3

    .line 131
    :cond_2
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    .line 135
    :cond_3
    sub-long/2addr v4, v8

    .line 137
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v6

    goto :goto_1
.end method
