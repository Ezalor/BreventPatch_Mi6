.class public Lme/piebridge/prevent/ui/a;
.super Lme/piebridge/prevent/ui/b;
.source "Applications.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lme/piebridge/prevent/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 33
    const v0, 0x7f050033

    return v0
.end method

.method protected a(Lme/piebridge/prevent/ui/PreventActivity;)Ljava/util/Set;
    .registers 7
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
    .line 20
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 21
    invoke-virtual {p1}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 22
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 23
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 24
    invoke-static {v2, v0}, Lme/piebridge/prevent/a/f;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 25
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 28
    :cond_2c
    return-object v1
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "-3g"

    return-object v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected d()Z
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method
