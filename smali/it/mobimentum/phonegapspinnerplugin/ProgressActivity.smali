.class public Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;
.super Landroid/app/Activity;
.source "ProgressActivity.java"


# static fields
.field public static final ACTION_HIDE_PROGRESS:Ljava/lang/String; = "ProgressActivity.ACTION_HIDE_PROGRESS"

.field public static final EXTRA_IS_FULLSCREEN:Ljava/lang/String; = "ProgressActivity.EXTRA_IS_FULLSCREEN"

.field public static final EXTRA_SHOW_OVERLAY:Ljava/lang/String; = "ProgressActivity.EXTRA_SHOW_OVERLAY"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v13, 0x400

    const/4 v12, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 30
    .local v2, "intent":Landroid/content/Intent;
    sget-object v9, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Intent: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ProgressActivity.ACTION_HIDE_PROGRESS"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v9, "ProgressActivity.ACTION_HIDE_PROGRESS"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 32
    invoke-virtual {p0}, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;->finish()V

    .line 34
    invoke-virtual {p0, v8, v8}, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;->overridePendingTransition(II)V

    .line 65
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 41
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    const-string v9, "ProgressActivity.EXTRA_SHOW_OVERLAY"

    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_3

    move v6, v8

    .line 42
    .local v6, "showOverlay":Z
    :goto_1
    if-eqz v1, :cond_4

    const-string v9, "ProgressActivity.EXTRA_IS_FULLSCREEN"

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    move v3, v7

    .line 45
    .local v3, "isFullscreen":Z
    :goto_2
    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {p0, v7}, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;->requestWindowFeature(I)Z

    .line 47
    invoke-virtual {p0}, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v13, v13}, Landroid/view/Window;->setFlags(II)V

    .line 51
    :cond_1
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    const v9, 0x101007a

    invoke-direct {v0, p0, v7, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    .local v0, "bar":Landroid/widget/ProgressBar;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v5, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 58
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v4, "layout":Landroid/widget/RelativeLayout;
    if-eqz v6, :cond_2

    const-string v7, "#cc000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 60
    :cond_2
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 63
    const v7, 0x1030010

    invoke-virtual {p0, v7}, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;->setTheme(I)V

    .line 64
    invoke-virtual {p0, v4}, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .end local v0    # "bar":Landroid/widget/ProgressBar;
    .end local v3    # "isFullscreen":Z
    .end local v4    # "layout":Landroid/widget/RelativeLayout;
    .end local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "showOverlay":Z
    :cond_3
    move v6, v7

    .line 41
    goto :goto_1

    .restart local v6    # "showOverlay":Z
    :cond_4
    move v3, v8

    .line 42
    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 69
    sget-object v0, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ProgressActivity.ACTION_HIDE_PROGRESS"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "ProgressActivity.ACTION_HIDE_PROGRESS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;->finish()V

    .line 73
    invoke-virtual {p0, v3, v3}, Lit/mobimentum/phonegapspinnerplugin/ProgressActivity;->overridePendingTransition(II)V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
