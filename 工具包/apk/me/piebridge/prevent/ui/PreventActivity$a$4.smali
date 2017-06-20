.class Lme/piebridge/prevent/ui/PreventActivity$a$4;
.super Ljava/lang/Object;
.source "PreventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/PreventActivity$a;->e()V
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
    .line 725
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity$a$4;->a:Lme/piebridge/prevent/ui/PreventActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 728
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a$4;->a:Lme/piebridge/prevent/ui/PreventActivity$a;

    iget-object v0, v0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->k(Lme/piebridge/prevent/ui/PreventActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 729
    return-void
.end method
