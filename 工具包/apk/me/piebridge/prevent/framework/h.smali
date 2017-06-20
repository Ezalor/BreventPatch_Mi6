.class public Lme/piebridge/prevent/framework/h;
.super Lme/piebridge/prevent/framework/b;
.source "SystemReceiver.java"


# static fields
.field public static final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "me.piebridge.prevent.GET_PACKAGES"

    aput-object v1, v0, v3

    const-string v1, "me.piebridge.prevent.GET_PROCESSES"

    aput-object v1, v0, v4

    const-string v1, "me.piebridge.prevent.GET_INFO"

    aput-object v1, v0, v5

    const-string v1, "me.piebridge.prevent.UPDATE_PREVENT"

    aput-object v1, v0, v6

    const-string v1, "me.piebridge.prevent.SYSTEM_LOG"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "me.piebridge.prevent.UPDATE_CONFIGURATION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "me.piebridge.prevent.SOFT_REBOOT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "me.piebridge.prevent.REBOOT"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/h;->c:Ljava/util/Collection;

    .line 67
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    aput-object v1, v0, v4

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/h;->d:Ljava/util/Collection;

    .line 73
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    aput-object v1, v0, v4

    const-string v1, "android.intent.action.SCREEN_OFF"

    aput-object v1, v0, v5

    const-string v1, "android.intent.action.SCREEN_ON"

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/h;->e:Ljava/util/Collection;

    return-void
.end method

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
    .line 81
    invoke-direct {p0, p1, p2}, Lme/piebridge/prevent/framework/b;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 52
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lme/piebridge/prevent/framework/h;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 82
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lme/piebridge/prevent/framework/a/k;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 83
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lme/piebridge/prevent/framework/a/k;->g(Landroid/content/Context;)Z

    .line 85
    :cond_20
    return-void
.end method

.method private a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 196
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object p2

    .line 199
    :goto_d
    return-object p2

    .line 197
    :catch_e
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method private a(Ljava/util/Set;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 331
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 332
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 333
    if-eqz v0, :cond_9

    .line 334
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 336
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 340
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 345
    invoke-direct {p0, p1}, Lme/piebridge/prevent/framework/h;->b(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    .line 346
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 347
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 348
    if-nez v0, :cond_1e

    .line 349
    const-string v0, "cannot get running processes"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;)V

    move-object v0, v2

    .line 368
    :goto_1d
    return-object v0

    .line 352
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 353
    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v6

    const/4 v1, 0x0

    move v3, v1

    :goto_33
    if-ge v3, v7, :cond_22

    aget-object v8, v6, v3

    .line 354
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 355
    if-nez v1, :cond_47

    .line 356
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 357
    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_47
    iget v9, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v10, 0x12c

    if-eq v9, v10, :cond_5b

    .line 360
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    :goto_57
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_33

    .line 361
    :cond_5b
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 362
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 364
    :cond_6c
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    neg-int v8, v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_78
    move-object v0, v2

    .line 368
    goto :goto_1d
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 100
    const-string v0, "me.piebridge.prevent.GET_PACKAGES"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 101
    invoke-direct {p0, p3}, Lme/piebridge/prevent/framework/h;->i(Ljava/lang/String;)V

    .line 117
    :cond_b
    :goto_b
    return-void

    .line 102
    :cond_c
    const-string v0, "me.piebridge.prevent.GET_PROCESSES"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 103
    invoke-direct {p0, p1, p3}, Lme/piebridge/prevent/framework/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 104
    :cond_18
    const-string v0, "me.piebridge.prevent.GET_INFO"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 105
    invoke-direct {p0}, Lme/piebridge/prevent/framework/h;->e()V

    goto :goto_b

    .line 106
    :cond_24
    const-string v0, "me.piebridge.prevent.UPDATE_PREVENT"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 107
    invoke-direct {p0, p3, p2}, Lme/piebridge/prevent/framework/h;->a(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_b

    .line 108
    :cond_30
    const-string v0, "me.piebridge.prevent.SYSTEM_LOG"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 109
    invoke-direct {p0}, Lme/piebridge/prevent/framework/h;->f()V

    goto :goto_b

    .line 110
    :cond_3c
    const-string v0, "me.piebridge.prevent.UPDATE_CONFIGURATION"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 111
    const-string v0, "me.piebridge.prevent.CONFIGURATION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/piebridge/prevent/framework/h;->a(Landroid/os/Bundle;)V

    goto :goto_b

    .line 112
    :cond_4e
    const-string v0, "me.piebridge.prevent.SOFT_REBOOT"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 113
    invoke-direct {p0}, Lme/piebridge/prevent/framework/h;->d()V

    goto :goto_b

    .line 114
    :cond_5a
    const-string v0, "me.piebridge.prevent.REBOOT"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 115
    invoke-direct {p0}, Lme/piebridge/prevent/framework/h;->c()V

    goto :goto_b
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lme/piebridge/prevent/framework/h;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 250
    invoke-direct {p0, v2}, Lme/piebridge/prevent/framework/h;->a(Ljava/util/Map;)V

    .line 251
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/h;->e(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 253
    if-nez v1, :cond_41

    .line 254
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v4, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lme/piebridge/prevent/framework/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 257
    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/h;->b(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 260
    :cond_41
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lme/piebridge/prevent/a/h;->a(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 261
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 262
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_6c

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/h;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 263
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 265
    :cond_6c
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 268
    :cond_70
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    invoke-direct {p0, v2}, Lme/piebridge/prevent/framework/h;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/h;->setResultData(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lme/piebridge/prevent/framework/h;->abortBroadcast()V

    .line 271
    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 169
    invoke-static {p1}, Lme/piebridge/prevent/a/f;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 171
    const-string v1, "PACKAGE_RESTARTED"

    invoke-direct {p0, v1, v0}, Lme/piebridge/prevent/framework/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_11
    :goto_11
    return-void

    .line 172
    :cond_12
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 173
    invoke-virtual {p0, p1}, Lme/piebridge/prevent/framework/h;->a(Landroid/content/Intent;)V

    goto :goto_11

    .line 174
    :cond_1e
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 175
    invoke-virtual {p0, p1}, Lme/piebridge/prevent/framework/h;->b(Landroid/content/Intent;)V

    goto :goto_11
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 142
    invoke-static {}, Lme/piebridge/prevent/a/b;->a()Lme/piebridge/prevent/a/b;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p1}, Lme/piebridge/prevent/a/b;->a(Landroid/os/Bundle;)V

    .line 144
    const-string v1, "prevent_list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 145
    const-string v1, "prevent_list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lme/piebridge/prevent/framework/h;->a(Ljava/util/Collection;)V

    .line 147
    :cond_18
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lme/piebridge/prevent/framework/h;->a(Lme/piebridge/prevent/a/b;Z)V

    .line 148
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 206
    const-string v1, "me.piebridge.prevent"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updated_prevents"

    invoke-static {v1, v3, p2}, Lme/piebridge/prevent/framework/a/n;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0, p1}, Lme/piebridge/prevent/framework/h;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3d} :catch_45

    .line 214
    :goto_3d
    return-void

    .line 209
    :catch_3e
    move-exception v0

    .line 210
    const-string v1, "cannot find application me.piebridge.prevent"

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 211
    :catch_45
    move-exception v0

    .line 212
    const-string v1, "cannot show toast"

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 300
    const-string v0, "me.piebridge.prevent.PACKAGES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 301
    const-string v0, "me.piebridge.prevent.PREVENT"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 302
    iget-object v6, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    .line 303
    array-length v7, v4

    move v3, v2

    :goto_12
    if-ge v3, v7, :cond_36

    aget-object v8, v4, v3

    .line 304
    if-eqz v5, :cond_2f

    .line 305
    invoke-virtual {p0, v8}, Lme/piebridge/prevent/framework/h;->a(Ljava/lang/String;)I

    move-result v0

    .line 306
    invoke-static {v8, v1}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;I)V

    .line 307
    if-nez v0, :cond_2d

    move v0, v1

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :goto_29
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_12

    :cond_2d
    move v0, v2

    .line 307
    goto :goto_22

    .line 309
    :cond_2f
    invoke-static {v8, v2}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;I)V

    .line 310
    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 313
    :cond_36
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    iget-object v2, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;Ljava/util/Set;Z)V

    .line 314
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/h;->setResultCode(I)V

    .line 315
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/h;->setResultData(Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 317
    invoke-virtual {p0}, Lme/piebridge/prevent/framework/h;->abortBroadcast()V

    .line 318
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 155
    if-nez p1, :cond_4

    .line 166
    :goto_3
    return-void

    .line 158
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update prevent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V

    .line 159
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    iget-object v2, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 161
    invoke-static {v0, v4}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;I)V

    .line 162
    iget-object v2, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 165
    :cond_43
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;Ljava/util/Set;Z)V

    goto :goto_3
.end method

.method private a(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_30

    .line 275
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    invoke-static {v0}, Lme/piebridge/prevent/framework/g;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 277
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-wide/16 v2, -0x64

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 281
    :cond_30
    return-void
.end method

.method private a(Lme/piebridge/prevent/a/b;Z)V
    .registers 5

    .prologue
    .line 151
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;Lme/piebridge/prevent/a/b;Z)V

    .line 152
    return-void
.end method

.method private b(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 322
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v0}, Lme/piebridge/prevent/framework/h;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 325
    :cond_2b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 373
    invoke-static {p1}, Lme/piebridge/prevent/framework/a/g;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 374
    iget-boolean v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v3, :cond_d

    .line 375
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 378
    :cond_27
    return-object v1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 382
    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 383
    invoke-virtual {p0, p2}, Lme/piebridge/prevent/framework/h;->g(Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;Z)V

    .line 385
    iget-object v0, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 386
    iget-object v0, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_1d
    invoke-static {}, Lme/piebridge/prevent/framework/g;->d()Z

    .line 389
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 120
    const-string v0, "sys.powerctl"

    const-string v1, "reboot"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 124
    const-string v0, "ctl.restart"

    const-string v1, "surfaceflinger"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "ctl.restart"

    const-string v1, "zygote"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private e()V
    .registers 6

    .prologue
    .line 129
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 130
    const-string v0, "method"

    invoke-static {}, Lme/piebridge/prevent/framework/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "version"

    invoke-static {}, Lme/piebridge/prevent/framework/g;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "name"

    const-string v2, "3.1.2"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "code"

    const/16 v2, 0x34c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Lme/piebridge/prevent/a/b;->a()Lme/piebridge/prevent/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lme/piebridge/prevent/a/b;->i()Landroid/os/Bundle;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 138
    :cond_51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/h;->setResultData(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lme/piebridge/prevent/framework/h;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_a

    .line 393
    iget-object v0, p0, Lme/piebridge/prevent/framework/h;->f:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 395
    :cond_a
    iget-object v0, p0, Lme/piebridge/prevent/framework/h;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lme/piebridge/prevent/framework/h$1;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/framework/h$1;-><init>(Lme/piebridge/prevent/framework/h;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/framework/h;->f:Ljava/util/concurrent/Future;

    .line 406
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 230
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 231
    invoke-virtual {p0}, Lme/piebridge/prevent/framework/h;->b()V

    .line 246
    :cond_b
    :goto_b
    return-void

    .line 232
    :cond_c
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 233
    invoke-virtual {p0}, Lme/piebridge/prevent/framework/h;->a()V

    goto :goto_b

    .line 234
    :cond_18
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 235
    const-string v0, "boot completed"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/piebridge/prevent/framework/a/a;->b(Landroid/content/Context;)V

    .line 237
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-nez v0, :cond_36

    .line 238
    iget-object v0, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/piebridge/prevent/framework/a/k;->d(Landroid/content/Context;)Z

    goto :goto_b

    .line 239
    :cond_36
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 240
    iget-object v0, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/piebridge/prevent/framework/a/k;->e(Landroid/content/Context;)Z

    goto :goto_b

    .line 242
    :cond_48
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 243
    const-string v0, "login accounts changed"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/piebridge/prevent/framework/a/a;->b(Landroid/content/Context;)V

    goto :goto_b
.end method

.method private i(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 284
    new-instance v1, Ljava/util/TreeMap;

    iget-object v0, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 285
    invoke-static {}, Lme/piebridge/prevent/framework/g;->n()Z

    move-result v0

    if-nez v0, :cond_36

    .line 286
    invoke-static {}, Lme/piebridge/prevent/a/e;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 288
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 292
    :cond_36
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 293
    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/h;->setResultCode(I)V

    .line 294
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/piebridge/prevent/framework/h;->setResultData(Ljava/lang/String;)V

    .line 295
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 296
    invoke-virtual {p0}, Lme/piebridge/prevent/framework/h;->abortBroadcast()V

    .line 297
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    invoke-static {p1}, Lme/piebridge/prevent/a/f;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lme/piebridge/prevent/framework/a/o;->a(Ljava/lang/String;)V

    .line 182
    const-string v1, "me.piebridge.prevent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_39

    .line 183
    invoke-static {v4}, Lme/piebridge/prevent/framework/g;->a(Z)V

    .line 184
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;Ljava/util/Set;Z)V

    .line 185
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    invoke-static {}, Lme/piebridge/prevent/a/b;->a()Lme/piebridge/prevent/a/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;Lme/piebridge/prevent/a/b;Z)V

    .line 192
    :cond_38
    :goto_38
    return-void

    .line 186
    :cond_39
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {}, Lme/piebridge/prevent/a/b;->a()Lme/piebridge/prevent/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lme/piebridge/prevent/a/b;->d()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 187
    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {v0, v4}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;I)V

    .line 189
    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lme/piebridge/prevent/framework/h;->a(Ljava/lang/String;I)V

    .line 190
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;Ljava/util/Set;Z)V

    goto :goto_38
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Lme/piebridge/prevent/framework/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lme/piebridge/prevent/framework/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/content/Intent;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-static {p1}, Lme/piebridge/prevent/a/f;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lme/piebridge/prevent/framework/a/o;->a(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v0}, Lme/piebridge/prevent/framework/h;->c(Ljava/lang/String;)V

    .line 220
    const-string v1, "me.piebridge.prevent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_28

    .line 221
    invoke-static {v2}, Lme/piebridge/prevent/framework/g;->a(Z)V

    .line 222
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lme/piebridge/prevent/framework/a/k;->b(Landroid/content/Context;)V

    .line 227
    :cond_27
    :goto_27
    return-void

    .line 223
    :cond_28
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_27

    .line 224
    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lme/piebridge/prevent/framework/h;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;Ljava/util/Set;Z)V

    goto :goto_27
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Lme/piebridge/prevent/framework/b;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Lme/piebridge/prevent/framework/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Lme/piebridge/prevent/framework/b;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Lme/piebridge/prevent/framework/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Lme/piebridge/prevent/framework/b;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    sget-object v1, Lme/piebridge/prevent/framework/h;->c:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lme/piebridge/prevent/framework/h;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 97
    :cond_f
    :goto_f
    return-void

    .line 92
    :cond_10
    sget-object v1, Lme/piebridge/prevent/framework/h;->d:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 93
    invoke-direct {p0, p2, v0}, Lme/piebridge/prevent/framework/h;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_f

    .line 94
    :cond_1c
    sget-object v1, Lme/piebridge/prevent/framework/h;->e:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 95
    invoke-direct {p0, v0}, Lme/piebridge/prevent/framework/h;->h(Ljava/lang/String;)V

    goto :goto_f
.end method
