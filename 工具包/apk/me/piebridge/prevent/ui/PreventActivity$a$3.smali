.class Lme/piebridge/prevent/ui/PreventActivity$a$3;
.super Ljava/lang/Object;
.source "PreventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/PreventActivity$a;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lme/piebridge/prevent/ui/PreventActivity$a;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/ui/PreventActivity$a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 713
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity$a$3;->b:Lme/piebridge/prevent/ui/PreventActivity$a;

    iput-object p2, p0, Lme/piebridge/prevent/ui/PreventActivity$a$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 716
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a$3;->b:Lme/piebridge/prevent/ui/PreventActivity$a;

    iget-object v0, v0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->a(Lme/piebridge/prevent/ui/PreventActivity;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 717
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a$3;->b:Lme/piebridge/prevent/ui/PreventActivity$a;

    iget-object v0, v0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    iget-object v1, p0, Lme/piebridge/prevent/ui/PreventActivity$a$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->c(Lme/piebridge/prevent/ui/PreventActivity;Ljava/lang/String;)V

    .line 719
    :cond_13
    return-void
.end method
