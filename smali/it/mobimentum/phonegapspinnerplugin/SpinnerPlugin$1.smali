.class Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin$1;
.super Ljava/lang/Object;
.source "SpinnerPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;->show(Landroid/app/Activity;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;

.field private final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin$1;->this$0:Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;

    iput-object p2, p0, Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin$1;->val$context:Landroid/app/Activity;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin$1;->this$0:Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;

    iget-object v1, p0, Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin$1;->val$context:Landroid/app/Activity;

    invoke-static {v0, v1}, Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;->access$0(Lit/mobimentum/phonegapspinnerplugin/SpinnerPlugin;Landroid/app/Activity;)Z

    return-void
.end method
