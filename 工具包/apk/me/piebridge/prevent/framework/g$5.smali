.class final Lme/piebridge/prevent/framework/g$5;
.super Ljava/lang/Object;
.source "SystemHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/framework/g;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 481
    iput-object p1, p0, Lme/piebridge/prevent/framework/g$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 484
    invoke-static {}, Lme/piebridge/prevent/framework/g;->s()Lme/piebridge/prevent/framework/h;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 485
    invoke-static {}, Lme/piebridge/prevent/framework/g;->s()Lme/piebridge/prevent/framework/h;

    move-result-object v0

    const-string v1, "move activity to back"

    iget-object v2, p0, Lme/piebridge/prevent/framework/g$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lme/piebridge/prevent/framework/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_11
    return-void
.end method
