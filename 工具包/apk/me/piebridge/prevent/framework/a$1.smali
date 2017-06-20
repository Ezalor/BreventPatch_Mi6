.class final Lme/piebridge/prevent/framework/a$1;
.super Ljava/lang/Object;
.source "ActivityManagerServiceHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/framework/a;->b(Ljava/lang/String;)Z
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
    .line 266
    iput-object p1, p0, Lme/piebridge/prevent/framework/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 269
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lme/piebridge/prevent/framework/a;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lme/piebridge/prevent/framework/a$1;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 270
    const-string v0, "removeTask"

    iget-object v1, p0, Lme/piebridge/prevent/framework/a$1;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lme/piebridge/prevent/framework/a$1;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/g;->c(Ljava/lang/String;Z)Z

    .line 273
    :cond_21
    return-void
.end method
