.class public Lme/piebridge/prevent/a/e;
.super Ljava/lang/Object;
.source "GmsUtils.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lme/piebridge/prevent/a/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/a/e;->b:Ljava/util/Collection;

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.google.android.gms"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.gsf"

    aput-object v1, v0, v3

    const-string v1, "com.google.android.gsf.login"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/a/e;->c:Ljava/util/Collection;

    .line 38
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.android.chrome"

    aput-object v1, v0, v2

    const-string v1, "com.android.facelock"

    aput-object v1, v0, v3

    const-string v1, "com.android.vending"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/a/e;->d:Ljava/util/Collection;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lme/piebridge/prevent/a/e;->e:Ljava/util/Set;

    return-void
.end method

.method public static a()Ljava/util/Collection;
    .registers 1
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
    .line 100
    sget-object v0, Lme/piebridge/prevent/a/e;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 52
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {p1}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lme/piebridge/prevent/a/f;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 53
    sget-object v0, Lme/piebridge/prevent/a/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increase gms reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/a/a;->a(Ljava/lang/String;)V

    .line 56
    :cond_3e
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 105
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 106
    const/16 v2, 0x2710

    if-ge v1, v2, :cond_a

    .line 114
    :cond_9
    :goto_9
    return v0

    .line 109
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 110
    const-string v3, "com.google.android.gms"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v1, :cond_1f

    invoke-static {v2, v1}, Lme/piebridge/prevent/a/e;->a(Landroid/content/pm/PackageManager;I)Z
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1c} :catch_21

    move-result v1

    if-eqz v1, :cond_9

    :cond_1f
    const/4 v0, 0x1

    goto :goto_9

    .line 111
    :catch_21
    move-exception v1

    .line 112
    const-string v2, "cannot find gms"

    invoke-static {v2, v1}, Lme/piebridge/prevent/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 3

    .prologue
    .line 74
    sget-object v0, Lme/piebridge/prevent/a/e;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 75
    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    invoke-static {p0, v0}, Lme/piebridge/prevent/a/e;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    const-string v0, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-static {p0, v0}, Lme/piebridge/prevent/a/e;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    :cond_12
    sget-object v0, Lme/piebridge/prevent/a/e;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/pm/PackageManager;I)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 119
    if-nez v2, :cond_8

    .line 127
    :cond_7
    :goto_7
    return v0

    .line 122
    :cond_8
    array-length v3, v2

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 123
    invoke-static {v4}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 124
    const/4 v0, 0x1

    goto :goto_7

    .line 122
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 48
    if-eqz p0, :cond_14

    const-string v0, "com.google.android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lme/piebridge/prevent/a/e;->d:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 4

    .prologue
    .line 66
    if-nez p1, :cond_8

    invoke-static {p0}, Lme/piebridge/prevent/a/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_8
    sget-object v0, Lme/piebridge/prevent/a/e;->b:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 59
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {p1}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lme/piebridge/prevent/a/f;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 60
    sget-object v0, Lme/piebridge/prevent/a/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrease gms reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/a/a;->a(Ljava/lang/String;)V

    .line 63
    :cond_3e
    return-void
.end method

.method public static b()Z
    .registers 3

    .prologue
    .line 131
    sget-object v0, Lme/piebridge/prevent/a/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 132
    if-eqz v0, :cond_20

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot stop gms now, gms reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/a/a;->a(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 70
    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 82
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 83
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 86
    if-nez v3, :cond_5b

    move v1, v0

    :goto_19
    move v2, v0

    .line 87
    :goto_1a
    if-ge v2, v1, :cond_60

    .line 88
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 89
    const-string v4, "com.google.android.gms"

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    sget-object v4, Lme/piebridge/prevent/a/e;->e:Ljava/util/Set;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add gcm register/unregister: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/a/a;->a(Ljava/lang/String;)V

    .line 87
    :cond_57
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1a

    .line 86
    :cond_5b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_19

    .line 93
    :cond_60
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 96
    if-eqz p0, :cond_c

    sget-object v0, Lme/piebridge/prevent/a/e;->c:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 141
    if-eqz p0, :cond_c

    const-string v0, "com.google.android.inputmethod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
