.class final Lme/piebridge/prevent/framework/g$1;
.super Lme/piebridge/prevent/framework/c;
.source "SystemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 223
    iput-object p3, p0, Lme/piebridge/prevent/framework/g$1;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lme/piebridge/prevent/framework/g$1;->b:Z

    invoke-direct {p0, p1, p2}, Lme/piebridge/prevent/framework/c;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lme/piebridge/prevent/framework/g$1;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lme/piebridge/prevent/framework/g$1;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lme/piebridge/prevent/framework/g$1;->b:Z

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/g;->d(Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
