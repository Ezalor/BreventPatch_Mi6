.class public final Lme/piebridge/prevent/framework/g;
.super Ljava/lang/Object;
.source "SystemHook.java"


# static fields
.field private static A:Ljava/lang/String;

.field private static B:Z

.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Ljava/lang/ClassLoader;

.field private static d:Ljava/util/Map;
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

.field private static f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/lang/Object;

.field private static i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static m:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private static n:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final p:Ljava/lang/Object;

.field private static q:Lme/piebridge/prevent/framework/h;

.field private static r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final s:Ljava/lang/Object;

.field private static t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static u:Ljava/util/Map;
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

.field private static v:Ljava/lang/String;

.field private static w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile x:Z

.field private static y:Ljava/lang/Object;

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 71
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/g;->e:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/g;->f:Ljava/util/Set;

    .line 73
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/g;->g:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/g;->h:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lme/piebridge/prevent/framework/g;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 78
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lme/piebridge/prevent/framework/g;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 80
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lme/piebridge/prevent/framework/g;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 82
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lme/piebridge/prevent/framework/g;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/g;->o:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/g;->p:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lme/piebridge/prevent/framework/g;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/g;->s:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/g;->t:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/g;->u:Ljava/util/Map;

    .line 100
    sput-boolean v2, Lme/piebridge/prevent/framework/g;->x:Z

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/g;->y:Ljava/lang/Object;

    .line 105
    sput-boolean v2, Lme/piebridge/prevent/framework/g;->B:Z

    return-void
.end method

.method public static a()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 116
    sget-object v0, Lme/piebridge/prevent/framework/g;->c:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static a(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 182
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cmdline"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    invoke-static {v0}, Lme/piebridge/prevent/framework/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_e

    .line 203
    :cond_d
    :goto_d
    return-object v0

    .line 192
    :cond_e
    :try_start_e
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 193
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 195
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 196
    :goto_21
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_45

    .line 197
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2c} :catch_2d

    goto :goto_21

    .line 201
    :catch_2d
    move-exception v1

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot read file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 199
    :cond_45
    :try_start_45
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4f} :catch_2d

    move-result-object v0

    goto :goto_d
.end method

.method private static a(II)V
    .registers 5

    .prologue
    .line 402
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_12

    invoke-static {v0}, Lme/piebridge/prevent/framework/g;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 404
    :cond_12
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 406
    if-nez v0, :cond_44

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", process: + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_3e
    const-string v1, "without parent"

    invoke-static {p1, v1, v0}, Lme/piebridge/prevent/framework/a/h;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_43
    return-void

    .line 408
    :cond_44
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4c

    .line 409
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_3e

    .line 411
    :cond_4c
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 153
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    if-nez v0, :cond_2d

    .line 154
    sget-object v1, Lme/piebridge/prevent/framework/g;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_7
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    if-nez v0, :cond_2c

    .line 156
    sput-object p0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    .line 157
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/g;->d:Ljava/util/Map;

    .line 158
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    sget-object v2, Lme/piebridge/prevent/framework/g;->d:Ljava/util/Map;

    invoke-static {v0, v2}, Lme/piebridge/prevent/framework/g;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 159
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    sget-object v2, Lme/piebridge/prevent/framework/g;->d:Ljava/util/Map;

    invoke-static {v0, v2}, Lme/piebridge/prevent/framework/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 160
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    sget-object v2, Lme/piebridge/prevent/framework/g;->d:Ljava/util/Map;

    invoke-static {v0, v2}, Lme/piebridge/prevent/framework/d;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 161
    invoke-static {}, Lme/piebridge/prevent/framework/g;->b()Z

    .line 163
    :cond_2c
    monitor-exit v1

    .line 165
    :cond_2d
    return-void

    .line 163
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;)V
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
    .line 168
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 169
    invoke-static {}, Lme/piebridge/prevent/framework/a/k;->a()Lme/piebridge/prevent/framework/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/piebridge/prevent/framework/a/k;->c(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prevent list size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 171
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 175
    :cond_45
    return-void
.end method

.method public static a(Ljava/lang/ClassLoader;)V
    .registers 1

    .prologue
    .line 112
    sput-object p0, Lme/piebridge/prevent/framework/g;->c:Ljava/lang/ClassLoader;

    .line 113
    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 435
    const/4 v0, 0x1

    sput-boolean v0, Lme/piebridge/prevent/framework/g;->x:Z

    .line 436
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/g;->v:Ljava/lang/String;

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch, current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lme/piebridge/prevent/framework/g;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;)V

    .line 438
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    if-eqz v0, :cond_2a

    .line 439
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    invoke-virtual {v0, p0}, Lme/piebridge/prevent/framework/h;->a(Ljava/lang/Object;)V

    .line 441
    :cond_2a
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 257
    if-eqz p0, :cond_b

    .line 258
    sget-object v1, Lme/piebridge/prevent/framework/g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_5
    sget-object v0, Lme/piebridge/prevent/framework/g;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v1

    .line 262
    :cond_b
    return-void

    .line 260
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x1e

    .line 208
    if-nez p0, :cond_5

    .line 237
    :goto_4
    return-void

    .line 212
    :cond_5
    sget-object v1, Lme/piebridge/prevent/framework/g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_8
    sget-object v0, Lme/piebridge/prevent/framework/g;->o:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 214
    if-eqz v0, :cond_27

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_27

    .line 215
    sget-object v2, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    invoke-static {v2, p0}, Lme/piebridge/prevent/a/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 218
    :cond_27
    invoke-static {p0}, Lme/piebridge/prevent/a/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 219
    sget-object v0, Lme/piebridge/prevent/framework/g;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_5c

    .line 222
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lme/piebridge/prevent/a/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lme/piebridge/prevent/framework/g;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lme/piebridge/prevent/framework/g$1;

    sget-object v2, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    sget-object v3, Lme/piebridge/prevent/framework/g;->d:Ljava/util/Map;

    invoke-direct {v1, v2, v3, p0, p1}, Lme/piebridge/prevent/framework/g$1;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Z)V

    .line 233
    invoke-static {p0}, Lme/piebridge/prevent/a/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_49
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 223
    invoke-virtual {v0, v1, v6, v7, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 234
    sget-object v1, Lme/piebridge/prevent/framework/g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_52
    sget-object v2, Lme/piebridge/prevent/framework/g;->o:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    monitor-exit v1

    goto :goto_4

    :catchall_59
    move-exception v0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_59

    throw v0

    .line 221
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0
.end method

.method public static a(Z)V
    .registers 1

    .prologue
    .line 606
    sput-boolean p0, Lme/piebridge/prevent/framework/g;->B:Z

    .line 607
    return-void
.end method

.method private static a(Landroid/app/usage/IUsageStatsManager;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 364
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v0

    .line 367
    :goto_6
    return v0

    .line 365
    :catch_7
    move-exception v1

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 346
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setAppIdle"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 347
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 348
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_3b} :catch_55
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_3b} :catch_6e

    .line 358
    :goto_3b
    return v0

    .line 350
    :catch_3c
    move-exception v0

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot inactive(no method) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 352
    goto :goto_3b

    .line 353
    :catch_55
    move-exception v0

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot inactive(invoke) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 355
    goto :goto_3b

    .line 356
    :catch_6e
    move-exception v0

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot inactive(illegal access) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 358
    goto :goto_3b
.end method

.method public static a(Ljava/lang/String;I)Z
    .registers 7

    .prologue
    .line 265
    if-eqz p0, :cond_b

    .line 266
    sget-object v1, Lme/piebridge/prevent/framework/g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_5
    sget-object v0, Lme/piebridge/prevent/framework/g;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1f

    .line 270
    :cond_b
    sget-object v0, Lme/piebridge/prevent/framework/g;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_22

    sget-object v0, Lme/piebridge/prevent/framework/g;->m:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 271
    const/4 v0, 0x0

    .line 284
    :goto_1e
    return v0

    .line 268
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 273
    :cond_22
    sget-object v0, Lme/piebridge/prevent/framework/g;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lme/piebridge/prevent/framework/g$2;

    sget-object v2, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    sget-object v3, Lme/piebridge/prevent/framework/g;->d:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lme/piebridge/prevent/framework/g$2;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/g;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 284
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method private static a([Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 418
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_19

    aget-object v3, p0, v1

    .line 419
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lme/piebridge/prevent/framework/g;->d:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 423
    :goto_15
    return v0

    .line 418
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 423
    :cond_19
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public static b(I)V
    .registers 1

    .prologue
    .line 592
    sput p0, Lme/piebridge/prevent/framework/g;->z:I

    .line 593
    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 444
    const/4 v0, 0x1

    sput-boolean v0, Lme/piebridge/prevent/framework/g;->x:Z

    .line 445
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    if-eqz v0, :cond_29

    .line 446
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    invoke-virtual {v0, p0}, Lme/piebridge/prevent/framework/h;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 447
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy all activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;)V

    .line 451
    :cond_29
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 308
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lme/piebridge/prevent/framework/g;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 320
    :goto_e
    return-void

    .line 311
    :cond_f
    sget-object v0, Lme/piebridge/prevent/framework/g;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lme/piebridge/prevent/framework/g$3;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/framework/g$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e
.end method

.method public static b(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 696
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_20

    .line 698
    :try_start_6
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    .line 699
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 700
    const/16 v2, 0x3f

    invoke-interface {v0, v2, v1, p0, p1}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_20} :catch_21

    .line 705
    :cond_20
    :goto_20
    return-void

    .line 701
    :catch_21
    move-exception v0

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot set background for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method public static b(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 614
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_6

    if-nez p0, :cond_7

    .line 635
    :cond_6
    :goto_6
    return-void

    .line 617
    :cond_7
    if-nez p1, :cond_c

    .line 618
    invoke-static {p0}, Lme/piebridge/prevent/framework/g;->l(Ljava/lang/String;)V

    .line 620
    :cond_c
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 621
    invoke-static {p0}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 622
    if-eqz p1, :cond_50

    .line 623
    sget-object v0, Lme/piebridge/prevent/framework/g;->g:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to running gapps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lme/piebridge/prevent/framework/g;->g:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 626
    :cond_4a
    sget-object v0, Lme/piebridge/prevent/framework/g;->g:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 628
    :cond_50
    sget-object v0, Lme/piebridge/prevent/framework/g;->g:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from running gapps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lme/piebridge/prevent/framework/g;->g:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 630
    const/4 v0, 0x0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;I)Z

    .line 632
    :cond_80
    sget-object v0, Lme/piebridge/prevent/framework/g;->g:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public static b()Z
    .registers 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 120
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PreventService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 122
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 124
    new-instance v0, Lme/piebridge/prevent/framework/h;

    sget-object v2, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    sget-object v3, Lme/piebridge/prevent/framework/g;->d:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Lme/piebridge/prevent/framework/h;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    sput-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    .line 126
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    sget-object v0, Lme/piebridge/prevent/framework/h;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_2b

    .line 130
    :cond_3b
    const-string v0, "prevent"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 131
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    sget-object v3, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    const-string v4, "me.piebridge.prevent.permission.MANAGER"

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 133
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    sget-object v0, Lme/piebridge/prevent/framework/h;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_54

    .line 137
    :cond_64
    const-string v0, "package"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    sget-object v3, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    invoke-virtual {v0, v3, v2, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 140
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    sget-object v0, Lme/piebridge/prevent/framework/h;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_7b

    .line 144
    :cond_8b
    const/16 v0, 0x3e8

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 145
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    sget-object v3, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    invoke-virtual {v0, v3, v2, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 147
    const-string v0, "prevent running 3.1.2 activated"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V

    .line 148
    sput-boolean v5, Lme/piebridge/prevent/framework/g;->b:Z

    .line 149
    return v5
.end method

.method public static c(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 454
    const/4 v0, 0x1

    sput-boolean v0, Lme/piebridge/prevent/framework/g;->x:Z

    .line 455
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/g;->v:Ljava/lang/String;

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume, current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lme/piebridge/prevent/framework/g;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;)V

    .line 457
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    if-eqz v0, :cond_2a

    .line 458
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    invoke-virtual {v0, p0}, Lme/piebridge/prevent/framework/h;->c(Ljava/lang/Object;)V

    .line 460
    :cond_2a
    return-void
.end method

.method public static c()Z
    .registers 2

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 323
    const-string v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    .line 324
    invoke-static {v1}, Lme/piebridge/prevent/framework/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 325
    if-nez v2, :cond_12

    .line 336
    :cond_11
    :goto_11
    return v0

    .line 328
    :cond_12
    invoke-static {v1, p0}, Lme/piebridge/prevent/framework/g;->a(Landroid/app/usage/IUsageStatsManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already inactive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 336
    :goto_2e
    const/4 v0, 0x1

    goto :goto_11

    .line 331
    :cond_30
    invoke-static {v2, p0}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to inactive, current inactive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, p0}, Lme/piebridge/prevent/framework/g;->a(Landroid/app/usage/IUsageStatsManager;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public static c(Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 675
    invoke-static {}, Lme/piebridge/prevent/a/b;->a()Lme/piebridge/prevent/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lme/piebridge/prevent/a/b;->g()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {p0}, Lme/piebridge/prevent/framework/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wont force-stop important system package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", force: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V

    .line 691
    :goto_32
    return v0

    .line 678
    :cond_33
    if-eqz p1, :cond_3c

    .line 679
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lme/piebridge/prevent/framework/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 680
    goto :goto_32

    .line 681
    :cond_3c
    invoke-static {}, Lme/piebridge/prevent/framework/g;->i()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 682
    invoke-static {p0}, Lme/piebridge/prevent/framework/g;->c(Ljava/lang/String;)Z

    .line 683
    invoke-static {p0, v1}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;I)V

    goto :goto_32

    .line 685
    :cond_49
    invoke-static {}, Lme/piebridge/prevent/framework/g;->f()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seems not safe to force stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V

    goto :goto_32

    .line 689
    :cond_6a
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/j;->a(Ljava/lang/String;)V

    .line 690
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lme/piebridge/prevent/framework/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 691
    goto :goto_32
.end method

.method static synthetic d(Ljava/lang/String;Z)Ljava/util/Collection;
    .registers 3

    .prologue
    .line 53
    invoke-static {p0, p1}, Lme/piebridge/prevent/framework/g;->e(Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 463
    const/4 v0, 0x1

    sput-boolean v0, Lme/piebridge/prevent/framework/g;->x:Z

    .line 464
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leaving, current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;)V

    .line 466
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    if-eqz v0, :cond_26

    .line 467
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    invoke-virtual {v0, p0}, Lme/piebridge/prevent/framework/h;->d(Ljava/lang/Object;)V

    .line 469
    :cond_26
    return-void
.end method

.method public static d()Z
    .registers 5

    .prologue
    .line 372
    sget-object v0, Lme/piebridge/prevent/framework/g;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_14

    sget-object v0, Lme/piebridge/prevent/framework/g;->n:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 373
    const/4 v0, 0x0

    .line 385
    :goto_13
    return v0

    .line 375
    :cond_14
    sget-object v0, Lme/piebridge/prevent/framework/g;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lme/piebridge/prevent/framework/g$4;

    invoke-direct {v1}, Lme/piebridge/prevent/framework/g$4;-><init>()V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/g;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 385
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 340
    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    .line 341
    invoke-static {v0, p0}, Lme/piebridge/prevent/framework/g;->a(Landroid/app/usage/IUsageStatsManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    .prologue
    .line 534
    sget-object v0, Lme/piebridge/prevent/framework/g;->v:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Ljava/lang/String;Z)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lme/piebridge/prevent/a/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    invoke-static {p0}, Lme/piebridge/prevent/a/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 242
    sget-object v1, Lme/piebridge/prevent/framework/g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_e
    sget-object v0, Lme/piebridge/prevent/framework/g;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 244
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_24

    .line 246
    :cond_14
    invoke-static {}, Lme/piebridge/prevent/framework/g;->n()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 247
    if-eqz p1, :cond_1f

    .line 248
    invoke-static {p0}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;)V

    .line 250
    :cond_1f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 252
    :goto_23
    return-object v0

    .line 244
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    .line 252
    :cond_27
    invoke-static {}, Lme/piebridge/prevent/a/e;->a()Ljava/util/Collection;

    move-result-object v0

    goto :goto_23
.end method

.method public static e(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 492
    const/4 v0, 0x1

    sput-boolean v0, Lme/piebridge/prevent/framework/g;->x:Z

    .line 493
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    if-eqz v0, :cond_c

    .line 494
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    invoke-virtual {v0, p0}, Lme/piebridge/prevent/framework/h;->e(Ljava/lang/Object;)V

    .line 496
    :cond_c
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 427
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    if-eqz v0, :cond_3e

    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    invoke-virtual {v0, p0}, Lme/piebridge/prevent/framework/h;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lme/piebridge/prevent/framework/g;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore prevent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;)V

    .line 429
    sget-object v0, Lme/piebridge/prevent/framework/g;->d:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;I)Z

    .line 432
    :cond_3e
    return-void
.end method

.method public static f()Ljava/util/Set;
    .registers 2
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
    .line 538
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_d

    .line 539
    sget-object v0, Lme/piebridge/prevent/framework/g;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 549
    :goto_c
    return-object v0

    .line 541
    :cond_d
    sget-object v0, Lme/piebridge/prevent/framework/g;->w:Ljava/util/Set;

    if-eqz v0, :cond_15

    sget-boolean v0, Lme/piebridge/prevent/framework/g;->x:Z

    if-eqz v0, :cond_26

    .line 542
    :cond_15
    sget-object v1, Lme/piebridge/prevent/framework/g;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_18
    sget-boolean v0, Lme/piebridge/prevent/framework/g;->x:Z

    if-eqz v0, :cond_25

    .line 544
    const/4 v0, 0x0

    sput-boolean v0, Lme/piebridge/prevent/framework/g;->x:Z

    .line 545
    invoke-static {}, Lme/piebridge/prevent/framework/a/b;->a()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/g;->w:Ljava/util/Set;

    .line 547
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_29

    .line 549
    :cond_26
    sget-object v0, Lme/piebridge/prevent/framework/g;->w:Ljava/util/Set;

    goto :goto_c

    .line 547
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public static f(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 472
    const/4 v0, 0x1

    sput-boolean v0, Lme/piebridge/prevent/framework/g;->x:Z

    .line 473
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    if-eqz v0, :cond_e

    .line 474
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    const-string v1, "start home activity"

    invoke-virtual {v0, v1, p0}, Lme/piebridge/prevent/framework/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_e
    return-void
.end method

.method public static g()I
    .registers 1

    .prologue
    .line 580
    sget v0, Lme/piebridge/prevent/framework/g;->z:I

    return v0
.end method

.method public static g(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 479
    const/4 v0, 0x1

    sput-boolean v0, Lme/piebridge/prevent/framework/g;->x:Z

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move activity to back, package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;)V

    .line 481
    sget-object v0, Lme/piebridge/prevent/framework/g;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lme/piebridge/prevent/framework/g$5;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/framework/g$5;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x200

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 489
    return-void
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    .prologue
    .line 584
    sget-object v0, Lme/piebridge/prevent/framework/g;->A:Ljava/lang/String;

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 499
    if-eqz p0, :cond_10

    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    if-eqz v0, :cond_10

    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    invoke-virtual {v0, p0}, Lme/piebridge/prevent/framework/h;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 505
    :goto_f
    return v1

    .line 504
    :cond_10
    sget-object v0, Lme/piebridge/prevent/framework/g;->t:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 505
    if-eqz v0, :cond_29

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_29

    move v0, v1

    :goto_27
    move v1, v0

    goto :goto_f

    :cond_29
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static i()Z
    .registers 2

    .prologue
    .line 596
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_12

    invoke-static {}, Lme/piebridge/prevent/a/b;->a()Lme/piebridge/prevent/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lme/piebridge/prevent/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static i(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 509
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static j()V
    .registers 1

    .prologue
    .line 600
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 601
    const/4 v0, 0x0

    sput-boolean v0, Lme/piebridge/prevent/framework/g;->B:Z

    .line 603
    :cond_9
    return-void
.end method

.method public static j(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 513
    invoke-static {p0}, Lme/piebridge/prevent/framework/g;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p0}, Lme/piebridge/prevent/a/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 514
    :cond_d
    const/4 v0, 0x1

    .line 525
    :cond_e
    :goto_e
    return v0

    .line 516
    :cond_f
    if-eqz p0, :cond_e

    invoke-static {p0}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 520
    :try_start_17
    sget-object v1, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 521
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 522
    invoke-static {v1}, Lme/piebridge/prevent/a/f;->a(I)Z
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_27} :catch_29

    move-result v0

    goto :goto_e

    .line 523
    :catch_29
    move-exception v1

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public static k(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 554
    sget-object v0, Lme/piebridge/prevent/framework/g;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lme/piebridge/prevent/framework/g$6;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/framework/g$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 564
    return-void
.end method

.method public static k()Z
    .registers 1

    .prologue
    .line 610
    sget-boolean v0, Lme/piebridge/prevent/framework/g;->B:Z

    return v0
.end method

.method public static l(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 567
    sget-object v0, Lme/piebridge/prevent/framework/g;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lme/piebridge/prevent/framework/g$7;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/framework/g$7;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 577
    return-void
.end method

.method public static l()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 638
    sget-object v0, Lme/piebridge/prevent/framework/g;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 640
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 641
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 642
    sget-object v5, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    invoke-virtual {v5, v0}, Lme/piebridge/prevent/framework/h;->a(Ljava/lang/String;)I

    move-result v5

    .line 643
    if-nez v5, :cond_23

    .line 644
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_21
    move v1, v0

    .line 648
    goto :goto_9

    .line 645
    :cond_23
    if-gt v5, v3, :cond_31

    sget-object v5, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v5, v0}, Lme/piebridge/prevent/a/f;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 646
    :cond_31
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_21

    .line 649
    :cond_35
    if-lez v1, :cond_50

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "running gapps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lme/piebridge/prevent/framework/g;->g:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    move v2, v3

    .line 653
    :cond_50
    return v2

    :cond_51
    move v0, v1

    goto :goto_21
.end method

.method public static m()Landroid/content/Context;
    .registers 1

    .prologue
    .line 708
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static m(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 588
    sput-object p0, Lme/piebridge/prevent/framework/g;->A:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 658
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    invoke-virtual {v0, p0}, Lme/piebridge/prevent/framework/h;->d(Ljava/lang/String;)V

    .line 659
    sget-object v1, Lme/piebridge/prevent/framework/g;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 660
    :try_start_8
    sget-object v0, Lme/piebridge/prevent/framework/g;->t:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 661
    if-eqz v0, :cond_22

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_22

    .line 662
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 664
    :cond_22
    sget-object v0, Lme/piebridge/prevent/framework/g;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lme/piebridge/prevent/framework/g$8;

    invoke-direct {v2, p0}, Lme/piebridge/prevent/framework/g$8;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 670
    sget-object v2, Lme/piebridge/prevent/framework/g;->t:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    monitor-exit v1

    .line 672
    return-void

    .line 671
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public static n()Z
    .registers 1

    .prologue
    .line 712
    invoke-static {}, Lme/piebridge/prevent/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lme/piebridge/prevent/framework/g;->l()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic o()Ljava/util/Collection;
    .registers 1

    .prologue
    .line 53
    invoke-static {}, Lme/piebridge/prevent/framework/g;->v()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Ljava/util/Collection;
    .registers 1

    .prologue
    .line 53
    invoke-static {}, Lme/piebridge/prevent/framework/g;->w()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q()Ljava/util/Map;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lme/piebridge/prevent/framework/g;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic r()V
    .registers 0

    .prologue
    .line 53
    invoke-static {}, Lme/piebridge/prevent/framework/g;->x()V

    return-void
.end method

.method static synthetic s()Lme/piebridge/prevent/framework/h;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lme/piebridge/prevent/framework/g;->q:Lme/piebridge/prevent/framework/h;

    return-object v0
.end method

.method static synthetic t()Landroid/content/Context;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lme/piebridge/prevent/framework/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic u()Ljava/util/Map;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lme/piebridge/prevent/framework/g;->u:Ljava/util/Map;

    return-object v0
.end method

.method private static v()Ljava/util/Collection;
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
    .line 288
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 289
    sget-object v1, Lme/piebridge/prevent/framework/g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    :try_start_8
    sget-object v2, Lme/piebridge/prevent/framework/g;->e:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 291
    sget-object v2, Lme/piebridge/prevent/framework/g;->e:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 292
    monitor-exit v1

    .line 293
    return-object v0

    .line 292
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private static w()Ljava/util/Collection;
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
    .line 297
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 298
    sget-object v1, Lme/piebridge/prevent/framework/g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    :try_start_8
    sget-object v2, Lme/piebridge/prevent/framework/g;->f:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 300
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1c

    .line 301
    invoke-static {}, Lme/piebridge/prevent/framework/g;->n()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 302
    invoke-static {}, Lme/piebridge/prevent/a/e;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 304
    :cond_1b
    return-object v0

    .line 300
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private static x()V
    .registers 7

    .prologue
    .line 389
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_3e

    aget-object v3, v1, v0

    .line 391
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 392
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 393
    invoke-static {v3}, Lme/piebridge/prevent/framework/a/f;->a(I)I

    move-result v4

    .line 394
    invoke-static {v3}, Lme/piebridge/prevent/framework/a/f;->b(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3b

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_3b

    .line 395
    invoke-static {v4, v3}, Lme/piebridge/prevent/framework/g;->a(II)V

    .line 390
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 399
    :cond_3e
    return-void
.end method
