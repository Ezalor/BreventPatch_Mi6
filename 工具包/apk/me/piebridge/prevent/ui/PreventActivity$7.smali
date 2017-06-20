.class Lme/piebridge/prevent/ui/PreventActivity$7;
.super Ljava/lang/Object;
.source "PreventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/PreventActivity;->j()V
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
    .line 176
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity$7;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 179
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$7;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->d(Lme/piebridge/prevent/ui/PreventActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 180
    :try_start_7
    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->g()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_15

    .line 181
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$7;->a:Lme/piebridge/prevent/ui/PreventActivity;

    const v2, 0x7f050037

    invoke-static {v0, v2}, Lme/piebridge/prevent/ui/PreventActivity;->a(Lme/piebridge/prevent/ui/PreventActivity;I)V

    .line 183
    :cond_15
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v0
.end method
