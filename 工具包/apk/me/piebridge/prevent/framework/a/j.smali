.class public Lme/piebridge/prevent/framework/a/j;
.super Ljava/lang/Object;
.source "NotificationManagerServiceUtils.java"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/reflect/Method;

.field private static final d:[I

.field private static e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Boolean;

.field private static g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lme/piebridge/prevent/framework/a/j;->d:[I

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/a/j;->e:Ljava/util/Set;

    .line 47
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lme/piebridge/prevent/framework/a/j;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 50
    invoke-static {}, Lme/piebridge/prevent/framework/a/j;->a()Z

    .line 51
    return-void

    .line 40
    nop

    :array_1c
    .array-data 4
        0x40
        0x20
        0x2
    .end array-data
.end method

.method public static a(Landroid/net/Uri;Ljava/util/Map;)Lme/piebridge/prevent/framework/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lme/piebridge/prevent/framework/e;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 163
    sget-object v1, Lme/piebridge/prevent/framework/a/j;->c:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v0}, Lme/piebridge/prevent/framework/a/j;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 164
    sget-object v0, Lme/piebridge/prevent/framework/e;->b:Lme/piebridge/prevent/framework/e;

    .line 166
    :goto_18
    return-object v0

    :cond_19
    sget-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    goto :goto_18
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 171
    sget-object v0, Lme/piebridge/prevent/framework/a/j;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method private static a()Z
    .registers 3

    .prologue
    .line 58
    const-string v0, "init NotificationManagerServiceUtils"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 59
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    if-nez v0, :cond_14

    .line 61
    const-string v0, "cannot find service: notification"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    .line 67
    :goto_13
    return v0

    .line 64
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 65
    invoke-static {v0}, Lme/piebridge/prevent/framework/a/j;->a(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13

    .line 67
    :cond_29
    invoke-static {v0}, Lme/piebridge/prevent/framework/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/a/j;->a(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13
.end method

.method private static a(Ljava/lang/Object;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    if-nez p0, :cond_5

    .line 89
    :goto_4
    return v0

    .line 74
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notificationManagerService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    move-object v3, v2

    .line 76
    :goto_24
    if-eqz v3, :cond_74

    .line 77
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_2c
    if-ge v2, v5, :cond_6e

    aget-object v6, v4, v2

    .line 78
    const-string v7, "cancelAllNotificationsInt"

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 79
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 80
    sput-object v6, Lme/piebridge/prevent/framework/a/j;->c:Ljava/lang/reflect/Method;

    .line 81
    sput-object p0, Lme/piebridge/prevent/framework/a/j;->b:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find cancelAllNotificationsInt in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lme/piebridge/prevent/framework/a/j;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    move v0, v1

    .line 83
    goto :goto_4

    .line 77
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 86
    :cond_6e
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v2

    goto :goto_24

    .line 88
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find cancelAllNotificationsInt in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public static a(Ljava/lang/Object;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 142
    invoke-static {p0, p2}, Lme/piebridge/prevent/framework/a/j;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lme/piebridge/prevent/framework/a/j;->e:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 146
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 157
    :cond_9
    :goto_9
    return v0

    .line 149
    :cond_a
    sget-object v1, Lme/piebridge/prevent/framework/a/j;->a:Ljava/lang/Object;

    if-eqz v1, :cond_15

    .line 150
    sget-object v0, Lme/piebridge/prevent/framework/a/j;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9

    .line 152
    :cond_15
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/e;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_9

    const-string v2, "com.android.server.NotificationManagerService$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "com.android.server.notification.NotificationManagerService$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 154
    :cond_2b
    sput-object p0, Lme/piebridge/prevent/framework/a/j;->a:Ljava/lang/Object;

    .line 155
    const/4 v0, 0x1

    goto :goto_9
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 28
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/j;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 93
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lme/piebridge/prevent/framework/a/j;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 94
    const/4 v0, 0x0

    .line 114
    :goto_b
    return v0

    .line 96
    :cond_c
    sget-object v0, Lme/piebridge/prevent/framework/a/j;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lme/piebridge/prevent/framework/a/j$1;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/framework/a/j$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 102
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lme/piebridge/prevent/framework/a/j;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 103
    const/4 v0, 0x1

    goto :goto_b

    .line 106
    :cond_23
    const-wide/16 v2, 0x1

    :try_start_25
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lme/piebridge/prevent/framework/a/j;->f:Ljava/lang/Boolean;
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2f} :catch_38
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_25 .. :try_end_2f} :catch_3f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_25 .. :try_end_2f} :catch_46

    .line 114
    :goto_2f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lme/piebridge/prevent/framework/a/j;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b

    .line 107
    :catch_38
    move-exception v0

    .line 108
    const-string v1, "cannot cancelStickyNotification (interrupt)"

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 109
    :catch_3f
    move-exception v0

    .line 110
    const-string v1, "cannot cancelStickyNotification (execution)"

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 111
    :catch_46
    move-exception v0

    .line 112
    const-string v1, "timeout when cancelStickyNotification"

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 13

    .prologue
    .line 118
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 119
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 120
    sget-object v0, Lme/piebridge/prevent/framework/a/j;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v3, v0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel sticky notification: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;)V

    .line 123
    :try_start_25
    sget-object v4, Lme/piebridge/prevent/framework/a/j;->d:[I

    array-length v5, v4

    const/4 v0, 0x0

    :goto_29
    if-ge v0, v5, :cond_e4

    aget v6, v4, v0

    .line 124
    const/4 v7, 0x4

    if-ne v3, v7, :cond_57

    .line 125
    sget-object v7, Lme/piebridge/prevent/framework/a/j;->c:Ljava/lang/reflect/Method;

    sget-object v8, Lme/piebridge/prevent/framework/a/j;->b:Ljava/lang/Object;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x3

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_54
    :goto_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 126
    :cond_57
    const/4 v7, 0x5

    if-ne v3, v7, :cond_8f

    .line 127
    sget-object v7, Lme/piebridge/prevent/framework/a/j;->c:Ljava/lang/reflect/Method;

    sget-object v8, Lme/piebridge/prevent/framework/a/j;->b:Ljava/lang/Object;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x3

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x4

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_86} :catch_87
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_86} :catch_dd

    goto :goto_54

    .line 133
    :catch_87
    move-exception v0

    .line 134
    const-string v1, "cannot access cancelAllNotificationsInt"

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :goto_8d
    const/4 v0, 0x0

    :goto_8e
    return v0

    .line 128
    :cond_8f
    const/16 v7, 0x9

    if-ne v3, v7, :cond_54

    .line 129
    :try_start_93
    sget-object v7, Lme/piebridge/prevent/framework/a/j;->c:Ljava/lang/reflect/Method;

    sget-object v8, Lme/piebridge/prevent/framework/a/j;->b:Ljava/lang/Object;

    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p0, v9, v10

    const/4 v10, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x4

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x5

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x6

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x7

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/16 v6, 0x8

    const/4 v10, 0x0

    aput-object v10, v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_db
    .catch Ljava/lang/IllegalAccessException; {:try_start_93 .. :try_end_db} :catch_87
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_93 .. :try_end_db} :catch_dd

    goto/16 :goto_54

    .line 135
    :catch_dd
    move-exception v0

    .line 136
    const-string v1, "cannot invoke cancelAllNotificationsInt"

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8d

    .line 132
    :cond_e4
    const/4 v0, 0x1

    goto :goto_8e
.end method
