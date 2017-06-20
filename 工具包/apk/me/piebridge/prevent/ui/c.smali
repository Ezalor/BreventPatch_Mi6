.class public Lme/piebridge/prevent/ui/c;
.super Lme/piebridge/prevent/ui/b;
.source "PreventList.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lme/piebridge/prevent/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 20
    const v0, 0x7f050032

    return v0
.end method

.method protected a(Lme/piebridge/prevent/ui/PreventActivity;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/piebridge/prevent/ui/PreventActivity;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p1}, Lme/piebridge/prevent/ui/PreventActivity;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method
