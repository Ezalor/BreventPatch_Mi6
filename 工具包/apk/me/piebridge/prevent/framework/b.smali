.class abstract Lme/piebridge/prevent/framework/b;
.super Landroid/content/BroadcastReceiver;
.source "ActivityReceiver.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/piebridge/prevent/framework/b;->c:Z

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/framework/b;->d:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/framework/b;->e:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/framework/b;->f:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/framework/b;->g:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/framework/b;->h:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lme/piebridge/prevent/framework/b;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 48
    iput-object p1, p0, Lme/piebridge/prevent/framework/b;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lme/piebridge/prevent/framework/b;->b:Ljava/util/Map;

    .line 50
    return-void
.end method

.method private a(ILjava/lang/String;)I
    .registers 7

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 59
    if-nez v0, :cond_c

    .line 73
    :goto_b
    return v1

    .line 62
    :cond_c
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    .line 63
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 66
    if-eq v1, p1, :cond_33

    invoke-direct {p0, v1, p2}, Lme/piebridge/prevent/framework/b;->b(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 67
    :cond_33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/2addr v0, v2

    :goto_3e
    move v2, v0

    .line 72
    goto :goto_15

    .line 69
    :cond_40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p2}, Lme/piebridge/prevent/framework/a/h;->a(ILjava/lang/String;)V

    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v2

    goto :goto_3e

    :cond_52
    move v1, v2

    .line 73
    goto :goto_b
.end method

.method private a(Landroid/app/INotificationManager;Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 341
    invoke-interface {p1, p2, p3}, Landroid/app/INotificationManager;->getPriority(Ljava/lang/String;I)I

    move-result v0

    .line 343
    :goto_a
    return v0

    :cond_b
    invoke-interface {p1, p2, p3}, Landroid/app/INotificationManager;->getPackagePriority(Ljava/lang/String;I)I

    move-result v0

    goto :goto_a
.end method

.method private a(IILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 99
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_11

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 103
    :goto_10
    return-object p3

    :cond_11
    invoke-static {p2}, Lme/piebridge/prevent/framework/g;->a(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_10
.end method

.method private a(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    iget-boolean v2, p0, Lme/piebridge/prevent/framework/b;->c:Z

    if-eqz v2, :cond_15

    .line 319
    :cond_14
    return-void

    .line 312
    :cond_15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_21

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/b;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 313
    :cond_21
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lme/piebridge/prevent/framework/g;->c(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 314
    invoke-direct {p0, v0}, Lme/piebridge/prevent/framework/b;->h(Ljava/lang/String;)V

    .line 316
    :cond_2b
    iget-object v2, p0, Lme/piebridge/prevent/framework/b;->h:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private a(Ljava/lang/String;I)Z
    .registers 5

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lme/piebridge/prevent/framework/b;->a(Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 382
    if-nez v0, :cond_f

    .line 383
    const/4 v0, 0x1

    .line 387
    :goto_e
    return v0

    .line 385
    :cond_f
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 386
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 387
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    goto :goto_e
.end method

.method static synthetic a(Lme/piebridge/prevent/framework/b;)Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lme/piebridge/prevent/framework/b;->c:Z

    return v0
.end method

.method static synthetic b(Lme/piebridge/prevent/framework/b;)V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lme/piebridge/prevent/framework/b;->d()V

    return-void
.end method

.method private b(ILjava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 79
    if-nez v0, :cond_d

    .line 95
    :cond_c
    :goto_c
    return v2

    .line 83
    :cond_d
    :try_start_d
    invoke-static {p1}, Lme/piebridge/prevent/framework/a/f;->a(I)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_14} :catch_27

    move-result v4

    if-ne v3, v4, :cond_c

    .line 89
    :goto_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lme/piebridge/prevent/framework/b;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-direct {p0, v0, p2}, Lme/piebridge/prevent/framework/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    move v2, v1

    .line 91
    goto :goto_c

    .line 86
    :catch_27
    move-exception v3

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get uid for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    .line 93
    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", process: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lme/piebridge/prevent/framework/b;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 95
    if-eqz v0, :cond_7c

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    move v0, v1

    :goto_7a
    move v2, v0

    goto :goto_c

    :cond_7c
    move v0, v2

    goto :goto_7a
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 108
    if-eqz p1, :cond_2b

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "<pre-initialized>"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_29
    const/4 v0, 0x1

    .line 108
    :goto_2a
    return v0

    .line 110
    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private c()V
    .registers 5

    .prologue
    .line 245
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->i:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->i:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 246
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->i:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 248
    :cond_18
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lme/piebridge/prevent/framework/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 115
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 116
    if-nez v0, :cond_1a

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    iget-object v1, p0, Lme/piebridge/prevent/framework/b;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1a
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has abnormal process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 124
    :cond_40
    return-void
.end method

.method private d()V
    .registers 13

    .prologue
    .line 273
    invoke-static {}, Lme/piebridge/prevent/a/b;->a()Lme/piebridge/prevent/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lme/piebridge/prevent/a/b;->b()J

    move-result-wide v4

    .line 274
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_f

    .line 305
    :cond_e
    :goto_e
    return-void

    .line 277
    :cond_f
    const-string v0, "checking leaving packages"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lme/piebridge/prevent/a/h;->a()J

    move-result-wide v6

    .line 279
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 280
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 281
    const/4 v0, 0x0

    move v2, v0

    .line 282
    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 283
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 286
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lme/piebridge/prevent/framework/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 289
    invoke-virtual {p0, v1}, Lme/piebridge/prevent/framework/b;->e(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 290
    if-nez v0, :cond_61

    .line 291
    invoke-virtual {p0, v1}, Lme/piebridge/prevent/framework/b;->b(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 293
    :cond_61
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v6, v10

    .line 294
    cmp-long v0, v10, v4

    if-ltz v0, :cond_97

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "leaving package "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " seconds"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V

    .line 296
    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v2

    :goto_95
    move v2, v0

    .line 300
    goto :goto_29

    .line 298
    :cond_97
    const/4 v0, 0x1

    goto :goto_95

    .line 301
    :cond_99
    invoke-direct {p0, v8}, Lme/piebridge/prevent/framework/b;->a(Ljava/util/Set;)V

    .line 302
    if-eqz v2, :cond_e

    .line 303
    invoke-direct {p0}, Lme/piebridge/prevent/framework/b;->e()V

    goto/16 :goto_e
.end method

.method private e()V
    .registers 6

    .prologue
    .line 348
    iget-boolean v0, p0, Lme/piebridge/prevent/framework/b;->c:Z

    if-nez v0, :cond_15

    .line 349
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lme/piebridge/prevent/framework/b$1;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/framework/b$1;-><init>(Lme/piebridge/prevent/framework/b;)V

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/framework/b;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 358
    :cond_15
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 53
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lme/piebridge/prevent/framework/b;->a(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a()V
    .registers 2

    .prologue
    .line 251
    const-string v0, "screen on"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/piebridge/prevent/framework/b;->c:Z

    .line 253
    invoke-direct {p0}, Lme/piebridge/prevent/framework/b;->c()V

    .line 254
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 127
    invoke-static {p1}, Lme/piebridge/prevent/framework/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 128
    if-nez v2, :cond_8

    .line 160
    :goto_7
    return-void

    .line 131
    :cond_8
    invoke-static {v2}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;)V

    .line 132
    invoke-static {v2, v5}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;Z)V

    .line 133
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 134
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_20
    invoke-static {p1}, Lme/piebridge/prevent/framework/a/c;->e(Ljava/lang/Object;)I

    move-result v3

    .line 137
    invoke-static {p1}, Lme/piebridge/prevent/framework/a/c;->f(Ljava/lang/Object;)I

    move-result v0

    .line 138
    invoke-static {p1}, Lme/piebridge/prevent/framework/a/c;->d(Ljava/lang/Object;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 139
    invoke-direct {p0, v1, v2}, Lme/piebridge/prevent/framework/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-lez v0, :cond_3c

    .line 141
    iget-object v1, p0, Lme/piebridge/prevent/framework/b;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_3c
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 144
    if-nez v0, :cond_7e

    .line 145
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 146
    iget-object v1, p0, Lme/piebridge/prevent/framework/b;->f:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 148
    :goto_51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 149
    if-nez v0, :cond_69

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_69
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 154
    invoke-direct {p0, v3, v2}, Lme/piebridge/prevent/framework/b;->a(ILjava/lang/String;)I

    move-result v0

    .line 155
    if-ne v0, v5, :cond_75

    .line 156
    invoke-static {v2}, Lme/piebridge/prevent/framework/g;->k(Ljava/lang/String;)V

    .line 158
    :cond_75
    const-string v1, "start activity"

    invoke-static {v1, v2, v0}, Lme/piebridge/prevent/framework/a/h;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    invoke-direct {p0, v2}, Lme/piebridge/prevent/framework/b;->h(Ljava/lang/String;)V

    goto :goto_7

    :cond_7e
    move-object v1, v0

    goto :goto_51
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x6

    .line 193
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;Z)V

    .line 194
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 195
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "destroy in 6s"

    invoke-static {p1, p2, v0}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {p2, v2}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;I)Z

    .line 201
    :goto_1f
    invoke-static {}, Lme/piebridge/prevent/framework/g;->d()Z

    .line 202
    return-void

    .line 199
    :cond_23
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;I)Z

    goto :goto_1f
.end method

.method protected b(Ljava/lang/String;)J
    .registers 6

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not prevented and has no leaving time, fix it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lme/piebridge/prevent/a/h;->a()J

    move-result-wide v0

    .line 236
    iget-object v2, p0, Lme/piebridge/prevent/framework/b;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-wide v0
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 257
    const-string v0, "screen off"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/piebridge/prevent/framework/b;->c:Z

    .line 259
    invoke-direct {p0}, Lme/piebridge/prevent/framework/b;->c()V

    .line 260
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 261
    invoke-direct {p0}, Lme/piebridge/prevent/framework/b;->d()V

    .line 262
    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v5, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    invoke-static {p1}, Lme/piebridge/prevent/framework/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 164
    if-nez v3, :cond_b

    move v0, v1

    .line 189
    :goto_a
    return v0

    .line 167
    :cond_b
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->f:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 168
    if-eqz v0, :cond_28

    .line 169
    invoke-static {p1}, Lme/piebridge/prevent/framework/a/c;->e(Ljava/lang/Object;)I

    move-result v4

    .line 170
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    if-eqz v0, :cond_28

    .line 172
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 175
    :cond_28
    invoke-virtual {p0, v3}, Lme/piebridge/prevent/framework/b;->a(Ljava/lang/String;)I

    move-result v0

    .line 176
    const-string v4, "destroy activity"

    invoke-static {v4, v3, v0}, Lme/piebridge/prevent/framework/a/h;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    if-lez v0, :cond_35

    move v0, v1

    .line 178
    goto :goto_a

    .line 180
    :cond_35
    invoke-static {v3, v1}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;Z)V

    .line 181
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 182
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "destroy activity"

    const-string v1, "if needed in 6s"

    invoke-static {v0, v3, v1}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {v3, v5}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;I)Z

    .line 188
    :goto_53
    invoke-static {}, Lme/piebridge/prevent/framework/g;->d()Z

    move v0, v2

    .line 189
    goto :goto_a

    .line 186
    :cond_58
    const/4 v0, 0x0

    invoke-static {v0, v5}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;I)Z

    goto :goto_53
.end method

.method public c(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 205
    invoke-static {p1}, Lme/piebridge/prevent/framework/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    if-nez v0, :cond_7

    .line 217
    :goto_6
    return-void

    .line 209
    :cond_7
    invoke-static {v0}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;)V

    .line 210
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;Z)V

    .line 211
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lme/piebridge/prevent/framework/b;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 212
    iget-object v1, p0, Lme/piebridge/prevent/framework/b;->b:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_26
    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/b;->a(Ljava/lang/String;)I

    move-result v1

    .line 215
    const-string v2, "resume activity"

    invoke-static {v2, v0, v1}, Lme/piebridge/prevent/framework/a/h;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    invoke-direct {p0, v0}, Lme/piebridge/prevent/framework/b;->h(Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lme/piebridge/prevent/framework/b;->h(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 220
    invoke-static {p1}, Lme/piebridge/prevent/framework/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    if-nez v0, :cond_7

    .line 227
    :goto_6
    return-void

    .line 224
    :cond_7
    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/b;->a(Ljava/lang/String;)I

    move-result v1

    .line 225
    iget-object v2, p0, Lme/piebridge/prevent/framework/b;->g:Ljava/util/Map;

    invoke-static {}, Lme/piebridge/prevent/a/h;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v2, "user leaving activity"

    invoke-static {v2, v0, v1}, Lme/piebridge/prevent/framework/a/h;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method protected e(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 361
    invoke-static {p1}, Lme/piebridge/prevent/framework/a/l;->a(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 362
    iget-object v1, p0, Lme/piebridge/prevent/framework/b;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 363
    const-string v1, "app died when user leaving"

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lme/piebridge/prevent/framework/a/h;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    :cond_14
    :goto_14
    return-void

    .line 366
    :cond_15
    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/b;->a(Ljava/lang/String;)I

    move-result v1

    .line 367
    const-string v2, "app died"

    invoke-static {v2, v0, v1}, Lme/piebridge/prevent/framework/a/h;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    invoke-static {p1}, Lme/piebridge/prevent/framework/a/l;->b(Ljava/lang/Object;)I

    move-result v1

    .line 369
    invoke-direct {p0, v0, v1}, Lme/piebridge/prevent/framework/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 372
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;Z)V

    .line 373
    iget-object v1, p0, Lme/piebridge/prevent/framework/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 374
    iget-object v1, p0, Lme/piebridge/prevent/framework/b;->b:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const/4 v1, 0x6

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;I)Z

    goto :goto_14
.end method

.method protected f(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 322
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 324
    :try_start_b
    iget-object v2, p0, Lme/piebridge/prevent/framework/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 325
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, p1, v2}, Lme/piebridge/prevent/framework/b;->a(Landroid/app/INotificationManager;Ljava/lang/String;I)I

    move-result v1

    .line 326
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has high priority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cannot stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x1

    .line 336
    :goto_40
    return v0

    .line 330
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_61} :catch_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_61} :catch_7a

    goto :goto_40

    .line 331
    :catch_62
    move-exception v1

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get package priority for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40

    .line 333
    :catch_7a
    move-exception v1

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40
.end method

.method protected g(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 391
    iget-object v0, p0, Lme/piebridge/prevent/framework/b;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    return-void
.end method
