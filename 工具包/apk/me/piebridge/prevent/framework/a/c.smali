.class public Lme/piebridge/prevent/framework/a/c;
.super Ljava/lang/Object;
.source "ActivityRecordUtils.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Ljava/lang/Class;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/a/c;->c:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    if-nez v1, :cond_1e

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find activity record from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/framework/f;->e(Ljava/lang/String;)V

    .line 49
    :goto_1d
    return-object v0

    .line 39
    :cond_1e
    invoke-static {p0, p1}, Lme/piebridge/prevent/framework/a/c;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 40
    if-eqz v2, :cond_4b

    .line 42
    :try_start_24
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_27} :catch_29

    move-result-object v0

    goto :goto_1d

    .line 43
    :catch_29
    move-exception v2

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 47
    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/framework/f;->e(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 30
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityRecord"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 74
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/c;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    :goto_6
    return-object p0

    .line 77
    :cond_7
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/c;->g(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_31

    .line 80
    :try_start_d
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_16} :catch_18

    move-result-object p0

    goto :goto_6

    .line 81
    :catch_18
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot access weakActivity in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    :goto_2f
    const/4 p0, 0x0

    goto :goto_6

    .line 85
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot get weakActivity in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->e(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5

    .prologue
    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    .line 70
    :goto_3
    return-object v0

    .line 57
    :cond_4
    sget-object v0, Lme/piebridge/prevent/framework/a/c;->d:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    sget-object v0, Lme/piebridge/prevent/framework/a/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 58
    sget-object v0, Lme/piebridge/prevent/framework/a/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_3

    .line 60
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/a/c;->d:Ljava/lang/Class;

    .line 61
    invoke-static {p0, p1}, Lme/piebridge/prevent/framework/a/m;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 62
    if-nez v0, :cond_54

    .line 63
    invoke-static {}, Lme/piebridge/prevent/framework/g;->j()V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lme/piebridge/prevent/framework/a/c;->d:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/framework/f;->e(Ljava/lang/String;)V

    .line 68
    :goto_4e
    sget-object v1, Lme/piebridge/prevent/framework/a/c;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 66
    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lme/piebridge/prevent/framework/a/c;->d:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    const-string v0, "packageName"

    invoke-static {p0, v0}, Lme/piebridge/prevent/framework/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Landroid/content/pm/ActivityInfo;
    .registers 2

    .prologue
    .line 116
    const-string v0, "info"

    invoke-static {p0, v0}, Lme/piebridge/prevent/framework/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)I
    .registers 2

    .prologue
    .line 120
    const-string v0, "app"

    invoke-static {p0, v0}, Lme/piebridge/prevent/framework/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lme/piebridge/prevent/framework/a/l;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/Object;)I
    .registers 2

    .prologue
    .line 125
    const-string v0, "app"

    invoke-static {p0, v0}, Lme/piebridge/prevent/framework/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lme/piebridge/prevent/framework/a/l;->a(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 127
    if-nez v0, :cond_e

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_d
    return v0

    :cond_e
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_d
.end method

.method private static g(Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .registers 3

    .prologue
    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    .line 104
    :goto_3
    return-object v0

    .line 94
    :cond_4
    sget-object v0, Lme/piebridge/prevent/framework/a/c;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_39

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/a/c;->b:Ljava/lang/Class;

    .line 96
    const-string v0, "weakActivity"

    invoke-static {p0, v0}, Lme/piebridge/prevent/framework/a/m;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/a/c;->a:Ljava/lang/reflect/Field;

    .line 97
    sget-object v0, Lme/piebridge/prevent/framework/a/c;->a:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3c

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find weakActivity in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lme/piebridge/prevent/framework/a/c;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->e(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lme/piebridge/prevent/framework/g;->j()V

    .line 104
    :cond_39
    :goto_39
    sget-object v0, Lme/piebridge/prevent/framework/a/c;->a:Ljava/lang/reflect/Field;

    goto :goto_3

    .line 101
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find weakActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lme/piebridge/prevent/framework/a/c;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lme/piebridge/prevent/framework/a/c;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    goto :goto_39
.end method
