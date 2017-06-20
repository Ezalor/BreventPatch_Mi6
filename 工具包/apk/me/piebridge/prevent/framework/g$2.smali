.class final Lme/piebridge/prevent/framework/g$2;
.super Lme/piebridge/prevent/framework/c;
.source "SystemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .registers 3

    .prologue
    .line 273
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
    .line 276
    invoke-static {}, Lme/piebridge/prevent/framework/g;->o()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/util/Collection;
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
    .line 281
    invoke-static {}, Lme/piebridge/prevent/framework/g;->p()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
