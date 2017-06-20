.class Lme/piebridge/prevent/ui/PreventActivity$a$2;
.super Ljava/lang/Object;
.source "PreventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/PreventActivity$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/PreventActivity$a;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/ui/PreventActivity$a;)V
    .registers 2

    .prologue
    .line 646
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity$a$2;->a:Lme/piebridge/prevent/ui/PreventActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 649
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a$2;->a:Lme/piebridge/prevent/ui/PreventActivity$a;

    iget-object v0, v0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->a(Lme/piebridge/prevent/ui/PreventActivity;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 650
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a$2;->a:Lme/piebridge/prevent/ui/PreventActivity$a;

    iget-object v0, v0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->g(Lme/piebridge/prevent/ui/PreventActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 655
    :goto_16
    return-void

    .line 652
    :cond_17
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a$2;->a:Lme/piebridge/prevent/ui/PreventActivity$a;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity$a;->a(Lme/piebridge/prevent/ui/PreventActivity$a;)V

    .line 653
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a$2;->a:Lme/piebridge/prevent/ui/PreventActivity$a;

    iget-object v0, v0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->i(Lme/piebridge/prevent/ui/PreventActivity;)V

    goto :goto_16
.end method
