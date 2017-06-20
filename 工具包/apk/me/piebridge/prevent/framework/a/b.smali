.class public Lme/piebridge/prevent/framework/a/b;
.super Ljava/lang/Object;
.source "ActivityManagerServiceUtils.java"


# direct methods
.method private static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_53

    .line 93
    const-string v0, "getStackVisibilityLocked"

    new-array v3, v1, [Ljava/lang/Class;

    aput-object v5, v3, v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v2

    invoke-static {p0, v0, v3, v4}, Lme/piebridge/prevent/framework/a/m;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 96
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_51

    move v0, v1

    :goto_4c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 98
    :goto_50
    return-object v0

    :cond_51
    move v0, v2

    .line 96
    goto :goto_4c

    .line 98
    :cond_53
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_50
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 67
    const-string v0, "getFocusedStack"

    invoke-static {p0, v0}, Lme/piebridge/prevent/framework/a/m;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    const-string v0, "getStack"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v2}, Lme/piebridge/prevent/framework/a/m;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 40
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    if-nez v0, :cond_e

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 59
    :goto_d
    return-object v0

    .line 44
    :cond_e
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 45
    invoke-static {v0}, Lme/piebridge/prevent/framework/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    const-string v3, "focused"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lme/piebridge/prevent/framework/a/b;->a(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 47
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_40

    .line 48
    const-string v3, "mStackSupervisor"

    invoke-static {v0, v3}, Lme/piebridge/prevent/framework/a/m;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    invoke-static {v0, v5}, Lme/piebridge/prevent/framework/a/b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 50
    if-eq v3, v2, :cond_34

    .line 51
    const-string v4, "fullscreen workspace"

    invoke-static {v1, v3, v4, v5}, Lme/piebridge/prevent/framework/a/b;->a(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 53
    :cond_34
    const/4 v3, 0x3

    invoke-static {v0, v3}, Lme/piebridge/prevent/framework/a/b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 54
    if-eq v0, v2, :cond_40

    .line 55
    const-string v2, "docked"

    invoke-static {v1, v0, v2, v5}, Lme/piebridge/prevent/framework/a/b;->a(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 58
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current packages: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 59
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_d
.end method

.method private static a(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p1, :cond_e

    if-eqz p3, :cond_f

    invoke-static {p1, p2}, Lme/piebridge/prevent/framework/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    .line 89
    :cond_e
    return-void

    .line 74
    :cond_f
    const-string v0, "mTaskHistory"

    invoke-static {p1, v0}, Lme/piebridge/prevent/framework/a/m;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 75
    if-eqz v0, :cond_e

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 77
    const-string v2, "mActivities"

    invoke-static {v0, v2}, Lme/piebridge/prevent/framework/a/m;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 78
    if-eqz v0, :cond_1d

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 80
    invoke-static {v2}, Lme/piebridge/prevent/framework/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activityRecord: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", packageName: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", message: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 82
    if-eqz v3, :cond_35

    .line 83
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_35
.end method
