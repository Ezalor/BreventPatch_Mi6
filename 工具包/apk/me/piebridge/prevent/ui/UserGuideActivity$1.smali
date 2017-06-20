.class Lme/piebridge/prevent/ui/UserGuideActivity$1;
.super Ljava/lang/Object;
.source "UserGuideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/UserGuideActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/UserGuideActivity;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/ui/UserGuideActivity;)V
    .registers 2

    .prologue
    .line 432
    iput-object p1, p0, Lme/piebridge/prevent/ui/UserGuideActivity$1;->a:Lme/piebridge/prevent/ui/UserGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 435
    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity$1;->a:Lme/piebridge/prevent/ui/UserGuideActivity;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/ui/UserGuideActivity$1;->a:Lme/piebridge/prevent/ui/UserGuideActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Lme/piebridge/prevent/ui/UserGuideActivity;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lme/piebridge/prevent/ui/a/b;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 436
    return-void
.end method
