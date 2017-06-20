.class public Lme/piebridge/prevent/framework/a/l;
.super Ljava/lang/Object;
.source "ProcessRecordUtils.java"


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
    .line 29
    invoke-static {}, Lme/piebridge/prevent/framework/a/l;->a()V

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 59
    if-eqz p0, :cond_13

    sget-object v0, Lme/piebridge/prevent/framework/a/l;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_13

    sget-object v0, Lme/piebridge/prevent/framework/a/l;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    move-object v0, v1

    .line 66
    :goto_14
    return-object v0

    .line 63
    :cond_15
    :try_start_15
    sget-object v0, Lme/piebridge/prevent/framework/a/l;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_14

    .line 64
    :catch_1e
    move-exception v0

    .line 65
    const-string v2, "cannot get info"

    invoke-static {v2, v0}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 66
    goto :goto_14
.end method

.method public static a()V
    .registers 3

    .prologue
    .line 33
    const-string v0, "init ProcessRecordUtils"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lme/piebridge/prevent/framework/g;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 36
    :try_start_9
    const-string v1, "com.android.server.am.ProcessRecord"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/a/l;->a:Ljava/lang/Class;

    .line 37
    sget-object v0, Lme/piebridge/prevent/framework/a/l;->a:Ljava/lang/Class;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/a/l;->b:Ljava/lang/reflect/Field;

    .line 38
    sget-object v0, Lme/piebridge/prevent/framework/a/l;->b:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 40
    sget-object v0, Lme/piebridge/prevent/framework/a/l;->a:Ljava/lang/Class;

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/a/l;->c:Ljava/lang/reflect/Field;

    .line 41
    sget-object v0, Lme/piebridge/prevent/framework/a/l;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_49

    .line 44
    sget-object v0, Lme/piebridge/prevent/framework/a/l;->a:Ljava/lang/Class;

    const-string v1, "killedByAm"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/a/l;->d:Ljava/lang/reflect/Field;

    .line 48
    :goto_42
    sget-object v0, Lme/piebridge/prevent/framework/a/l;->d:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    :goto_48
    return-void

    .line 46
    :cond_49
    sget-object v0, Lme/piebridge/prevent/framework/a/l;->a:Ljava/lang/Class;

    const-string v1, "killedBackground"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/a/l;->d:Ljava/lang/reflect/Field;
    :try_end_53
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_53} :catch_54
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_53} :catch_5e

    goto :goto_42

    .line 49
    :catch_54
    move-exception v0

    .line 50
    const-string v1, "cannot find class for ProcessRecordUtils"

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    invoke-static {}, Lme/piebridge/prevent/framework/g;->j()V

    goto :goto_48

    .line 52
    :catch_5e
    move-exception v0

    .line 53
    const-string v1, "cannot find fields for ProcessRecordUtils"

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    invoke-static {}, Lme/piebridge/prevent/framework/g;->j()V

    goto :goto_48
.end method

.method public static b(Ljava/lang/Object;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 71
    if-eqz p0, :cond_13

    sget-object v0, Lme/piebridge/prevent/framework/a/l;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_13

    sget-object v0, Lme/piebridge/prevent/framework/a/l;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    move v0, v1

    .line 78
    :goto_14
    return v0

    .line 75
    :cond_15
    :try_start_15
    sget-object v0, Lme/piebridge/prevent/framework/a/l;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_20} :catch_22

    move-result v0

    goto :goto_14

    .line 76
    :catch_22
    move-exception v0

    .line 77
    const-string v2, "cannot get pid"

    invoke-static {v2, v0}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 78
    goto :goto_14
.end method
