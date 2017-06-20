.class Lme/piebridge/prevent/ui/PreventActivity$4;
.super Ljava/lang/Object;
.source "PreventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/PreventActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/PreventActivity;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/ui/PreventActivity;)V
    .registers 2

    .prologue
    .line 768
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity$4;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 771
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$4;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->a(Lme/piebridge/prevent/ui/PreventActivity;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 772
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$4;->a:Lme/piebridge/prevent/ui/PreventActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->a(Lme/piebridge/prevent/ui/PreventActivity;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$4;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->l(Lme/piebridge/prevent/ui/PreventActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 775
    :cond_19
    return-void
.end method
