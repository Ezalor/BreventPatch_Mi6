.class Lme/piebridge/prevent/ui/PreventActivity$3;
.super Ljava/lang/Object;
.source "PreventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/PreventActivity;->y()Z
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
    .line 583
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity$3;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 586
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$3;->a:Lme/piebridge/prevent/ui/PreventActivity;

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 587
    return-void
.end method
