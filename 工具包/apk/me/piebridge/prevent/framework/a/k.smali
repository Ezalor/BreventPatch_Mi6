.class public final Lme/piebridge/prevent/framework/a/k;
.super Ljava/lang/Object;
.source "PreventListUtils.java"


# static fields
.field private static a:Lme/piebridge/prevent/framework/a/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lme/piebridge/prevent/framework/a/k;

    invoke-direct {v0}, Lme/piebridge/prevent/framework/a/k;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/a/k;->a:Lme/piebridge/prevent/framework/a/k;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_12} :catch_3a

    .line 46
    :goto_12
    if-nez v0, :cond_2b

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_2b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 51
    invoke-static {v1}, Lme/piebridge/prevent/a/d;->b(Ljava/io/File;)Z

    .line 53
    :cond_39
    return-object v1

    .line 43
    :catch_3a
    move-exception v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find package for context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_12
.end method

.method public static a()Lme/piebridge/prevent/framework/a/k;
    .registers 1

    .prologue
    .line 199
    sget-object v0, Lme/piebridge/prevent/framework/a/k;->a:Lme/piebridge/prevent/framework/a/k;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 187
    invoke-static {p2}, Lme/piebridge/prevent/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 188
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    :cond_11
    :goto_11
    return-void

    .line 189
    :cond_12
    invoke-static {p2}, Lme/piebridge/prevent/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 191
    :try_start_18
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_11

    .line 192
    :catch_20
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse long from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "me.piebridge.prevent"

    const-string v4, "me.piebridge.prevent.ui.PreventActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    const/high16 v0, 0x8000000

    invoke-static {p0, v2, v3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 122
    :try_start_27
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/k;->j(Landroid/content/Context;)I

    move-result v4

    .line 123
    const-string v5, "me.piebridge.prevent"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_30} :catch_6d

    move-result-object v3

    .line 129
    const-string v5, "app_name"

    invoke-static {v3, v5}, Lme/piebridge/prevent/framework/a/n;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    new-instance v6, Landroid/support/v4/a/e$d;

    invoke-direct {v6, p0}, Landroid/support/v4/a/e$d;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v6, v1}, Landroid/support/v4/a/e$d;->b(Z)Landroid/support/v4/a/e$d;

    move-result-object v6

    .line 132
    invoke-virtual {v6, v2}, Landroid/support/v4/a/e$d;->a(Z)Landroid/support/v4/a/e$d;

    move-result-object v6

    .line 133
    invoke-virtual {v6, v5}, Landroid/support/v4/a/e$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/a/e$d;

    move-result-object v6

    .line 134
    invoke-static {v3, p2}, Lme/piebridge/prevent/framework/a/n;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/support/v4/a/e$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/a/e$d;

    move-result-object v3

    .line 135
    invoke-virtual {v3, v5}, Landroid/support/v4/a/e$d;->c(Ljava/lang/CharSequence;)Landroid/support/v4/a/e$d;

    move-result-object v3

    .line 136
    invoke-virtual {v3, v4}, Landroid/support/v4/a/e$d;->a(I)Landroid/support/v4/a/e$d;

    move-result-object v3

    .line 137
    invoke-virtual {v3, v0}, Landroid/support/v4/a/e$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/a/e$d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/e$d;->a()Landroid/app/Notification;

    move-result-object v3

    .line 139
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 140
    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move v0, v1

    .line 141
    :goto_6c
    return v0

    .line 124
    :catch_6d
    move-exception v0

    .line 125
    const-string v1, "cannot find me.piebridge.prevent"

    invoke-static {v1, v0}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 126
    goto :goto_6c
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 101
    const-string v0, "notify not supported"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 102
    const-string v0, "me.piebridge.prevent.NOT_SUPPORTED"

    const-string v1, "not_supported"

    invoke-static {p0, v0, v1}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 106
    const-string v0, "notify no prevent list"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 107
    const-string v0, "android.intent.action.MAIN"

    const-string v1, "no_prevents"

    invoke-static {p0, v0, v1}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private h(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .prologue
    .line 57
    const-string v0, "me.piebridge.prevent.list"

    invoke-direct {p0, p1, v0}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private i(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .prologue
    .line 61
    const-string v0, "me.piebridge.prevent.conf"

    invoke-direct {p0, p1, v0}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static j(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ic_menu_blocked_user"

    const-string v2, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 146
    if-nez v0, :cond_21

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 149
    :cond_21
    return v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/util/Set;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lme/piebridge/prevent/framework/a/k;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 73
    if-nez p3, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 74
    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lme/piebridge/prevent/a/d;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update prevents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 77
    :cond_33
    monitor-exit p0

    return-void

    .line 72
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Lme/piebridge/prevent/a/b;Z)V
    .registers 6

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lme/piebridge/prevent/framework/a/k;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 66
    if-nez p3, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 67
    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lme/piebridge/prevent/a/b;->i()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lme/piebridge/prevent/a/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 69
    :cond_18
    monitor-exit p0

    return-void

    .line 65
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lme/piebridge/prevent/framework/a/k;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lme/piebridge/prevent/framework/a/k;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    :cond_d
    invoke-direct {p0, p1}, Lme/piebridge/prevent/framework/a/k;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 93
    :cond_1a
    invoke-static {}, Lme/piebridge/prevent/framework/a/i;->a()V

    .line 94
    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/util/Set;
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
    .line 97
    invoke-direct {p0, p1}, Lme/piebridge/prevent/framework/a/k;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/a/d;->a(Ljava/io/File;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lme/piebridge/prevent/framework/a/k;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public g(Landroid/content/Context;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-static {}, Lme/piebridge/prevent/a/b;->a()Lme/piebridge/prevent/a/b;

    move-result-object v1

    .line 160
    invoke-direct {p0, p1}, Lme/piebridge/prevent/framework/a/k;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_10

    .line 183
    :goto_f
    return v0

    .line 164
    :cond_10
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 167
    :try_start_15
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 168
    :cond_1f
    :goto_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 169
    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 172
    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 173
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1f

    .line 174
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 175
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-direct {p0, v3, v5, v2}, Lme/piebridge/prevent/framework/a/k;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_44} :catch_45

    goto :goto_1f

    .line 179
    :catch_45
    move-exception v0

    .line 180
    const-string v2, "cannot load configuration"

    invoke-static {v2, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    :cond_4b
    invoke-virtual {v1, v3}, Lme/piebridge/prevent/a/b;->a(Landroid/os/Bundle;)V

    .line 183
    const/4 v0, 0x1

    goto :goto_f
.end method
