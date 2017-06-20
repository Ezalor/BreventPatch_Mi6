.class Lme/piebridge/prevent/ui/PreventActivity$6;
.super Ljava/lang/Object;
.source "PreventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/PreventActivity;->onRestart()V
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
    .line 163
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity$6;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 166
    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->g()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$6;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->a(Lme/piebridge/prevent/ui/PreventActivity;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 167
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$6;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->c(Lme/piebridge/prevent/ui/PreventActivity;)V

    .line 169
    :cond_13
    return-void
.end method
