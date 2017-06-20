.class public final Lme/piebridge/prevent/ui/a/f;
.super Ljava/lang/Object;
.source "PreventListUtils.java"


# static fields
.field private static a:Z

.field private static b:Lme/piebridge/prevent/ui/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lme/piebridge/prevent/ui/a/f;->a:Z

    .line 22
    new-instance v0, Lme/piebridge/prevent/ui/a/f;

    invoke-direct {v0}, Lme/piebridge/prevent/ui/a/f;-><init>()V

    sput-object v0, Lme/piebridge/prevent/ui/a/f;->b:Lme/piebridge/prevent/ui/a/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static a()Lme/piebridge/prevent/ui/a/f;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lme/piebridge/prevent/ui/a/f;->b:Lme/piebridge/prevent/ui/a/f;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_24

    .line 36
    :goto_11
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "conf"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "prevent.list"

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :catch_24
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find package for context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "me.piebridge.prevent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 40
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_44

    move-result-object v2

    .line 43
    :try_start_6
    const-string v0, "backup_prevent_list"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_c} :catch_1d
    .catchall {:try_start_6 .. :try_end_c} :catchall_44

    move-result v0

    move v2, v0

    .line 48
    :goto_e
    :try_start_e
    invoke-static {p1}, Lme/piebridge/prevent/a/c;->a(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_14
    if-ge v0, v4, :cond_51

    aget-object v1, v3, v0

    .line 49
    if-nez v1, :cond_33

    .line 48
    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 44
    :catch_1d
    move-exception v0

    .line 45
    const-string v3, "invalid value for backup_prevent_list"

    invoke-static {v3, v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "backup_prevent_list"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v2, v1

    goto :goto_e

    .line 52
    :cond_33
    new-instance v5, Ljava/io/File;

    const-string v6, "prevent.list"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    if-eqz v2, :cond_47

    .line 54
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lme/piebridge/prevent/a/d;->a(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_44

    goto :goto_1a

    .line 40
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    .line 55
    :cond_47
    :try_start_47
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 56
    invoke-static {v5}, Lme/piebridge/prevent/a/d;->b(Ljava/io/File;)Z

    goto :goto_1a

    .line 59
    :cond_51
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 61
    invoke-static {v0}, Lme/piebridge/prevent/a/d;->b(Ljava/io/File;)Z
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_44

    .line 63
    :cond_63
    monitor-exit p0

    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/util/Set;
    .registers 3
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
    .line 76
    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lme/piebridge/prevent/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-boolean v1, Lme/piebridge/prevent/ui/a/f;->a:Z

    if-nez v1, :cond_12

    .line 68
    sput-boolean v2, Lme/piebridge/prevent/ui/a/f;->a:Z

    .line 69
    invoke-static {p1, v2}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/Context;Z)Z

    move-result v0

    .line 71
    :cond_12
    invoke-virtual {p0, p1, p2}, Lme/piebridge/prevent/ui/a/f;->a(Landroid/content/Context;Ljava/util/Set;)V

    .line 72
    return v0
.end method
