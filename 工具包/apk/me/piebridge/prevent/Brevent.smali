.class public Lme/piebridge/prevent/Brevent;
.super Ljava/lang/Object;
.source "Brevent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/piebridge/prevent/Brevent$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 299
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 300
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 301
    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 302
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 304
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_e

    .line 307
    :cond_27
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const/16 v0, 0x3f

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/piebridge/prevent/Brevent;->a(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(II)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    .line 90
    if-nez v0, :cond_14

    .line 91
    new-instance v0, Lme/piebridge/prevent/Brevent$a;

    const-string v1, "Can\'t connect to appops services; is the system running?"

    invoke-direct {v0, v1}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_14
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 94
    if-nez v0, :cond_25

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 107
    :goto_24
    return-object v0

    .line 97
    :cond_25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    .line 99
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 100
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v5

    if-ne v5, p0, :cond_42

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v1

    if-ne v1, p1, :cond_42

    .line 101
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 106
    :cond_62
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v0, v2

    .line 107
    goto :goto_24
.end method

.method private static a(Landroid/app/IActivityManager;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IActivityManager;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    const v0, 0x7fffffff

    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p0, v0, v1}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;

    move-result-object v0

    .line 281
    if-nez v0, :cond_16

    .line 282
    const-string v0, "Brevent"

    const-string v1, "cannot get services"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 291
    :goto_15
    return-object v0

    .line 285
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 287
    iget-boolean v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v3, :cond_1f

    .line 288
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_38} :catch_39

    goto :goto_1f

    .line 292
    :catch_39
    move-exception v0

    .line 293
    new-instance v1, Lme/piebridge/prevent/Brevent$a;

    const-string v2, "cannot get services"

    invoke-direct {v1, v2, v0}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_42
    move-object v0, v1

    .line 291
    goto :goto_15
.end method

.method private static a(Ljava/net/Socket;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 134
    .line 140
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d9

    .line 142
    :cond_f
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_df

    .line 143
    const-string v2, "GET /"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 144
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 145
    const/16 v4, 0x20

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 146
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_31
    new-instance v2, Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3a
    .catchall {:try_start_f .. :try_end_3a} :catchall_dc

    .line 153
    const/16 v1, 0xc8

    .line 155
    :try_start_3c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 156
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 175
    :goto_45
    const-string v4, "HTTP/1.0 200 OK"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    const-string v4, "Content-Type: text/plain"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X-Status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 180
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->write([B)V

    .line 181
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V
    :try_end_85
    .catchall {:try_start_3c .. :try_end_85} :catchall_be

    .line 183
    if-eqz v2, :cond_8a

    .line 184
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    .line 186
    :cond_8a
    if-eqz v3, :cond_8f

    .line 187
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 190
    :cond_8f
    return-void

    .line 158
    :cond_90
    :try_start_90
    const-string v4, "Brevent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "route: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_90 .. :try_end_a8} :catchall_be

    .line 161
    :try_start_a8
    invoke-static {v0}, Lme/piebridge/prevent/Brevent;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_ab
    .catch Lme/piebridge/prevent/Brevent$a; {:try_start_a8 .. :try_end_ab} :catch_b1
    .catch Ljava/lang/RuntimeException; {:try_start_a8 .. :try_end_ab} :catch_cc
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_be

    move-result-object v0

    .line 171
    :goto_ac
    :try_start_ac
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_45

    .line 162
    :catch_b1
    move-exception v4

    .line 163
    const/16 v1, 0x1f4

    .line 164
    invoke-virtual {v4}, Lme/piebridge/prevent/Brevent$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v5, "Brevent"

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_ac .. :try_end_bd} :catchall_be

    goto :goto_ac

    .line 183
    :catchall_be
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_c1
    if-eqz v1, :cond_c6

    .line 184
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 186
    :cond_c6
    if-eqz v2, :cond_cb

    .line 187
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_cb
    throw v0

    .line 166
    :catch_cc
    move-exception v4

    .line 167
    const/16 v1, 0x1f7

    .line 168
    :try_start_cf
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v5, "Brevent"

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d8
    .catchall {:try_start_cf .. :try_end_d8} :catchall_be

    goto :goto_ac

    .line 183
    :catchall_d9
    move-exception v0

    move-object v2, v1

    goto :goto_c1

    :catchall_dc
    move-exception v0

    move-object v2, v3

    goto :goto_c1

    :cond_df
    move-object v0, v1

    goto/16 :goto_31
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 48
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 49
    if-nez v0, :cond_28

    .line 50
    new-instance v0, Lme/piebridge/prevent/Brevent$a;

    const-string v1, "Can\'t connect to activity manager; is the system running?"

    invoke-direct {v0, v1}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_e

    .line 54
    :catch_e
    move-exception v0

    .line 55
    new-instance v1, Lme/piebridge/prevent/Brevent$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t force stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 52
    :cond_28
    const/4 v1, -0x1

    :try_start_29
    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_e

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method private static a(Ljava/lang/String;II)Z
    .registers 8

    .prologue
    .line 116
    :try_start_0
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    .line 117
    if-nez v0, :cond_38

    .line 118
    new-instance v0, Lme/piebridge/prevent/Brevent$a;

    const-string v1, "Can\'t connect to appops service; is the system running?"

    invoke-direct {v0, v1}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 128
    :catch_14
    move-exception v0

    .line 129
    new-instance v1, Lme/piebridge/prevent/Brevent$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t set run in background to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 120
    :cond_38
    :try_start_38
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 121
    const-string v2, "Brevent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-interface {v2, p0, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 123
    if-gez v2, :cond_83

    .line 124
    new-instance v0, Lme/piebridge/prevent/Brevent$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No UID for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_83
    invoke-interface {v0, p1, v2, p0, p2}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_86} :catch_14

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .registers 6

    .prologue
    .line 61
    :try_start_0
    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    .line 62
    if-nez v0, :cond_38

    .line 63
    new-instance v0, Lme/piebridge/prevent/Brevent$a;

    const-string v1, "Can\'t connect to usage stats manager; is the system running?"

    invoke-direct {v0, v1}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 67
    :catch_14
    move-exception v0

    .line 68
    new-instance v1, Lme/piebridge/prevent/Brevent$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t set inactive to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 65
    :cond_38
    const/4 v1, -0x2

    :try_start_39
    invoke-interface {v0, p0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_14

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method private static b()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 243
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 244
    if-nez v0, :cond_e

    .line 245
    new-instance v0, Lme/piebridge/prevent/Brevent$a;

    const-string v1, "Can\'t connect to activity manager; is the system running?"

    invoke-direct {v0, v1}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 250
    :try_start_13
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_22

    move-result-object v1

    .line 254
    if-nez v1, :cond_2b

    .line 255
    const-string v0, "Brevent"

    const-string v1, "cannot get running processes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 275
    :goto_21
    return-object v0

    .line 251
    :catch_22
    move-exception v0

    .line 252
    new-instance v0, Lme/piebridge/prevent/Brevent$a;

    const-string v1, "cannot get running app processes"

    invoke-direct {v0, v1}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_2b
    invoke-static {v0}, Lme/piebridge/prevent/Brevent;->a(Landroid/app/IActivityManager;)Ljava/util/Set;

    move-result-object v4

    .line 259
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 260
    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v6

    const/4 v1, 0x0

    move v3, v1

    :goto_44
    if-ge v3, v7, :cond_33

    aget-object v8, v6, v3

    .line 261
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 262
    if-nez v1, :cond_58

    .line 263
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 264
    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_58
    iget v9, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v10, 0x12c

    if-eq v9, v10, :cond_6c

    .line 267
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    :goto_68
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_44

    .line 268
    :cond_6c
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 269
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 271
    :cond_7d
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    neg-int v8, v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_89
    move-object v0, v2

    .line 275
    goto :goto_21
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 74
    :try_start_0
    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    .line 75
    if-nez v0, :cond_2e

    .line 76
    new-instance v0, Lme/piebridge/prevent/Brevent$a;

    const-string v1, "Can\'t connect to usage stats manager; is the system running?"

    invoke-direct {v0, v1}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 79
    :catch_14
    move-exception v0

    .line 80
    new-instance v1, Lme/piebridge/prevent/Brevent$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get inactive for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 78
    :cond_2e
    const/4 v1, -0x2

    :try_start_2f
    invoke-interface {v0, p0, v1}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;I)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_14

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 111
    const/16 v1, 0x3f

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-static {p0, v1, v0}, Lme/piebridge/prevent/Brevent;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    .line 193
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v1, "/am/force-stop/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 195
    aget-object v0, v0, v2

    .line 196
    invoke-static {v0}, Lme/piebridge/prevent/Brevent;->d(Ljava/lang/String;)V

    .line 197
    invoke-static {v0}, Lme/piebridge/prevent/Brevent;->a(Ljava/lang/String;)Z

    .line 223
    :cond_18
    :goto_18
    const-string v0, "success"

    :goto_1a
    return-object v0

    .line 198
    :cond_1b
    const-string v1, "/aos/query"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 199
    invoke-static {}, Lme/piebridge/prevent/Brevent;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/Brevent;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 200
    :cond_2c
    const-string v1, "/aos/ignore/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "/aos/allow/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 201
    :cond_3c
    aget-object v1, v0, v3

    .line 202
    invoke-static {v1}, Lme/piebridge/prevent/Brevent;->e(Ljava/lang/String;)V

    .line 203
    aget-object v0, v0, v2

    .line 204
    invoke-static {v0}, Lme/piebridge/prevent/Brevent;->d(Ljava/lang/String;)V

    .line 205
    const-string v2, "allow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lme/piebridge/prevent/Brevent;->b(Ljava/lang/String;Z)Z

    goto :goto_18

    .line 206
    :cond_50
    const-string v1, "/usm/get/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 207
    aget-object v0, v0, v2

    .line 208
    invoke-static {v0}, Lme/piebridge/prevent/Brevent;->d(Ljava/lang/String;)V

    .line 209
    invoke-static {v0}, Lme/piebridge/prevent/Brevent;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 210
    :cond_66
    const-string v1, "/usm/active/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "/usm/inactive/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 211
    :cond_76
    aget-object v1, v0, v3

    .line 212
    invoke-static {v1}, Lme/piebridge/prevent/Brevent;->e(Ljava/lang/String;)V

    .line 213
    aget-object v0, v0, v2

    .line 214
    invoke-static {v0}, Lme/piebridge/prevent/Brevent;->d(Ljava/lang/String;)V

    .line 215
    const-string v2, "inactive"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lme/piebridge/prevent/Brevent;->a(Ljava/lang/String;Z)Z

    goto :goto_18

    .line 216
    :cond_8a
    const-string v0, "/am/processes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 218
    :try_start_92
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lme/piebridge/prevent/Brevent;->b()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_92 .. :try_end_9f} :catch_a2

    move-result-object v0

    goto/16 :goto_1a

    .line 219
    :catch_a2
    move-exception v0

    .line 220
    new-instance v1, Lme/piebridge/prevent/Brevent$a;

    const-string v2, "cannot stringify"

    invoke-direct {v1, v2, v0}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 228
    new-instance v0, Lme/piebridge/prevent/Brevent$a;

    const-string v1, "require package name"

    invoke-direct {v0, v1}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_e
    const-string v0, "Brevent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 235
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 236
    new-instance v0, Lme/piebridge/prevent/Brevent$a;

    const-string v1, "require action"

    invoke-direct {v0, v1}, Lme/piebridge/prevent/Brevent$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_e
    const-string v0, "Brevent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 311
    new-instance v0, Ljava/net/ServerSocket;

    const/16 v1, 0x22b8

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 313
    :goto_7
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 314
    invoke-static {v1}, Lme/piebridge/prevent/Brevent;->a(Ljava/net/Socket;)V

    .line 315
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    goto :goto_7
.end method
