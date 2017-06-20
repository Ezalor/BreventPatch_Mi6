.class Lme/piebridge/prevent/ui/PreventActivity$2;
.super Ljava/lang/Object;
.source "PreventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/PreventActivity;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/b;

.field final synthetic b:Lme/piebridge/prevent/ui/PreventActivity;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/ui/PreventActivity;Lme/piebridge/prevent/ui/b;)V
    .registers 3

    .prologue
    .line 556
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity$2;->b:Lme/piebridge/prevent/ui/PreventActivity;

    iput-object p2, p0, Lme/piebridge/prevent/ui/PreventActivity$2;->a:Lme/piebridge/prevent/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$2;->a:Lme/piebridge/prevent/ui/b;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b;->g()V

    .line 560
    return-void
.end method
