.class public Lme/piebridge/prevent/framework/a/e;
.super Ljava/lang/Object;
.source "BroadcastFilterUtils.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 26
    invoke-static {}, Lme/piebridge/prevent/framework/a/e;->a()V

    .line 27
    return-void
.end method

.method private static a()V
    .registers 3

    .prologue
    .line 30
    const-string v0, "init BroadcastFilterUtils"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lme/piebridge/prevent/framework/g;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 33
    :try_start_9
    const-string v1, "com.android.server.am.BroadcastFilter"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lme/piebridge/prevent/framework/a/e;->a:Ljava/lang/Class;

    .line 34
    sget-object v1, Lme/piebridge/prevent/framework/a/e;->a:Ljava/lang/Class;

    const-string v2, "receiverList"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lme/piebridge/prevent/framework/a/e;->b:Ljava/lang/reflect/Field;

    .line 35
    sget-object v1, Lme/piebridge/prevent/framework/a/e;->b:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    const-string v1, "com.android.server.am.ReceiverList"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lme/piebridge/prevent/framework/a/e;->c:Ljava/lang/reflect/Field;

    .line 39
    sget-object v1, Lme/piebridge/prevent/framework/a/e;->c:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 41
    const-string v1, "receiver"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/a/e;->d:Ljava/lang/reflect/Field;

    .line 42
    sget-object v0, Lme/piebridge/prevent/framework/a/e;->d:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_45} :catch_46
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_45} :catch_50

    .line 50
    :goto_45
    return-void

    .line 43
    :catch_46
    move-exception v0

    .line 44
    const-string v1, "cannot find classes for BroadcastFilterUtils"

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    invoke-static {}, Lme/piebridge/prevent/framework/g;->j()V

    goto :goto_45

    .line 46
    :catch_50
    move-exception v0

    .line 47
    const-string v1, "cannot find fields for BroadcastFilterUtils"

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    invoke-static {}, Lme/piebridge/prevent/framework/g;->j()V

    goto :goto_45
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 53
    sget-object v0, Lme/piebridge/prevent/framework/a/e;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_12

    sget-object v0, Lme/piebridge/prevent/framework/a/e;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/e;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 70
    :cond_7
    :goto_7
    return-object v0

    .line 61
    :cond_8
    :try_start_8
    sget-object v1, Lme/piebridge/prevent/framework/a/e;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    sget-object v2, Lme/piebridge/prevent/framework/a/e;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lme/piebridge/prevent/framework/a/l;->a(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_7

    .line 65
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1c} :catch_1d

    goto :goto_7

    .line 67
    :catch_1d
    move-exception v1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get package name from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/e;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v1

    .line 94
    :goto_8
    return-object v0

    .line 78
    :cond_9
    :try_start_9
    sget-object v0, Lme/piebridge/prevent/framework/a/e;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    sget-object v2, Lme/piebridge/prevent/framework/a/e;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mDispatcher"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 81
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 83
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 85
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_46} :catch_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_46} :catch_61
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_46} :catch_79

    move-result-object v0

    goto :goto_8

    .line 87
    :catch_48
    move-exception v0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find field for filter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5f
    move-object v0, v1

    .line 94
    goto :goto_8

    .line 89
    :catch_61
    move-exception v0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot access field for filter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5f

    .line 91
    :catch_79
    move-exception v0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get field for filter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5f
.end method
