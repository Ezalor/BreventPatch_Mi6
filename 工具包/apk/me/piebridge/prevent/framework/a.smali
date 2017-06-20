.class public Lme/piebridge/prevent/framework/a;
.super Ljava/lang/Object;
.source "ActivityManagerServiceHook.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/util/Map;
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

.field private static e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/a;->c:Ljava/util/Collection;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/a;->d:Ljava/util/Collection;

    .line 37
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lme/piebridge/prevent/framework/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lme/piebridge/prevent/framework/a;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 2
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
    .line 44
    sput-object p0, Lme/piebridge/prevent/framework/a;->a:Landroid/content/Context;

    .line 45
    sput-object p1, Lme/piebridge/prevent/framework/a;->b:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const-string v3, "me.piebridge.prevent"

    const/4 v4, 0x0

    .line 181
    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 183
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 184
    invoke-static {v0}, Lme/piebridge/prevent/framework/g;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 186
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 189
    :cond_4f
    return-void
.end method

.method private static a(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 192
    sget-object v2, Lme/piebridge/prevent/framework/a;->a:Landroid/content/Context;

    invoke-static {v2, p0}, Lme/piebridge/prevent/a/e;->a(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 205
    :cond_a
    :goto_a
    return v1

    .line 195
    :cond_b
    sget-object v2, Lme/piebridge/prevent/framework/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 196
    sget-object v3, Lme/piebridge/prevent/framework/a;->c:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 197
    sget-object v3, Lme/piebridge/prevent/framework/a;->c:Ljava/util/Collection;

    invoke-static {v2, v3}, Lme/piebridge/prevent/framework/a;->a(Landroid/content/pm/PackageManager;Ljava/util/Collection;)V

    .line 199
    :cond_1e
    sget-object v3, Lme/piebridge/prevent/framework/a;->c:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 202
    invoke-static {p1}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    move v1, v0

    .line 203
    goto :goto_a

    .line 205
    :cond_2e
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_3a
    move v0, v1

    :cond_3b
    move v1, v0

    goto :goto_a
.end method

.method private static a(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(self)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 100
    :goto_1e
    return v0

    .line 88
    :cond_1f
    const-string v2, "broadcast"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 90
    invoke-static {p0, p1, p2, p3}, Lme/piebridge/prevent/framework/a;->b(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1e

    .line 91
    :cond_2c
    const-string v2, "service"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 92
    invoke-static {p0, p1, p2, p3}, Lme/piebridge/prevent/framework/a;->c(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1e

    .line 93
    :cond_39
    const-string v2, "content provider"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-static {p0}, Lme/piebridge/prevent/framework/a/o;->d(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 94
    invoke-static {v0, p2, p1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    move v0, v1

    .line 95
    goto :goto_1e

    .line 98
    :cond_4c
    invoke-static {p2, v1}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;Z)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(should safe)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 51
    sget-object v0, Lme/piebridge/prevent/framework/a;->a:Landroid/content/Context;

    if-nez v0, :cond_d

    if-eqz p0, :cond_d

    .line 52
    invoke-static {p0}, Lme/piebridge/prevent/framework/g;->a(Landroid/content/Context;)V

    .line 63
    :cond_d
    sget-object v0, Lme/piebridge/prevent/framework/a;->b:Ljava/util/Map;

    if-nez v0, :cond_17

    .line 64
    const-string v0, "prevent list shouldn\'t be null"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->e(Ljava/lang/String;)V

    .line 80
    :goto_16
    return v2

    .line 68
    :cond_17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lme/piebridge/prevent/framework/a;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    const-string v4, "activity"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 70
    invoke-static {v3}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;)V

    .line 71
    invoke-static {v3, v2}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;Z)V

    .line 72
    if-eqz v0, :cond_3d

    .line 74
    sget-object v0, Lme/piebridge/prevent/framework/a;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 77
    :cond_3d
    invoke-static {v3, p2, p3, p4}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 80
    :cond_40
    if-eqz v0, :cond_48

    invoke-static {p3, p2, v3, p4}, Lme/piebridge/prevent/framework/a;->a(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_48
    move v1, v2

    :cond_49
    move v2, v1

    goto :goto_16
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 225
    sget-object v2, Lme/piebridge/prevent/framework/a;->d:Ljava/util/Collection;

    invoke-interface {v2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 238
    :cond_a
    :goto_a
    return v0

    .line 229
    :cond_b
    :try_start_b
    sget-object v2, Lme/piebridge/prevent/framework/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 230
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 231
    invoke-static {v2, v3}, Lme/piebridge/prevent/a/f;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 232
    :goto_1c
    if-eqz v0, :cond_a

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v2}, Lme/piebridge/prevent/a/f;->a(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 233
    sget-object v2, Lme/piebridge/prevent/framework/a;->d:Ljava/util/Collection;

    invoke-interface {v2, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_2b} :catch_2c

    goto :goto_a

    .line 236
    :catch_2c
    move-exception v0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 238
    goto :goto_a

    :cond_45
    move v0, v1

    .line 231
    goto :goto_1c
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 209
    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 221
    :cond_8
    :goto_8
    return v0

    .line 211
    :cond_9
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 212
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_8

    move v0, v1

    goto :goto_8

    .line 213
    :cond_19
    invoke-static {p0}, Lme/piebridge/prevent/framework/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lme/piebridge/prevent/framework/a;->a:Landroid/content/Context;

    .line 214
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 215
    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {p0}, Lme/piebridge/prevent/framework/g;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_37
    move v0, v1

    .line 221
    goto :goto_8
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 4

    .prologue
    .line 156
    invoke-static {p2}, Lme/piebridge/prevent/framework/a/o;->b(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 157
    const/4 v0, 0x0

    .line 163
    :goto_7
    return v0

    .line 158
    :cond_8
    invoke-static {p2}, Lme/piebridge/prevent/framework/a/o;->c(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lme/piebridge/prevent/framework/a;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lme/piebridge/prevent/framework/a/o;->b(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 159
    :cond_16
    const/4 v0, 0x1

    goto :goto_7

    .line 160
    :cond_18
    if-nez p0, :cond_23

    .line 161
    invoke-static {}, Lme/piebridge/prevent/a/b;->a()Lme/piebridge/prevent/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lme/piebridge/prevent/a/b;->c()Z

    move-result v0

    goto :goto_7

    .line 163
    :cond_23
    invoke-static {p0, p1}, Lme/piebridge/prevent/framework/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method private static b(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/o;->a(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 105
    invoke-static {p2, v1}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;Z)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(safe)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 110
    :goto_21
    return v0

    .line 109
    :cond_22
    invoke-static {v0, p2, p1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    move v0, v1

    .line 110
    goto :goto_21
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 263
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/String;Z)V

    .line 264
    if-eqz p0, :cond_26

    sget-object v0, Lme/piebridge/prevent/framework/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_26

    sget-object v0, Lme/piebridge/prevent/framework/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 265
    sget-object v0, Lme/piebridge/prevent/framework/a;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lme/piebridge/prevent/framework/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lme/piebridge/prevent/framework/a$1;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/framework/a$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 276
    :cond_26
    return v2
.end method

.method private static c(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 115
    sget-object v1, Lme/piebridge/prevent/framework/a;->a:Landroid/content/Context;

    invoke-static {v1, p0, p3}, Lme/piebridge/prevent/framework/a/o;->a(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 116
    invoke-static {p0, p1, p2, p3}, Lme/piebridge/prevent/framework/a;->f(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 130
    :goto_d
    return v0

    .line 118
    :cond_e
    sget-object v1, Lme/piebridge/prevent/framework/a;->a:Landroid/content/Context;

    invoke-static {v1, p0, p3}, Lme/piebridge/prevent/framework/a/o;->b(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 119
    invoke-static {p0, p1, p2, p3}, Lme/piebridge/prevent/framework/a;->d(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_d

    .line 121
    :cond_1b
    invoke-static {p2}, Lme/piebridge/prevent/a/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 122
    invoke-static {p0, p1, p2, p3}, Lme/piebridge/prevent/framework/a;->e(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_d

    .line 124
    :cond_26
    invoke-static {p3, p2, p0}, Lme/piebridge/prevent/framework/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 125
    invoke-static {p2, v0}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;Z)V

    .line 126
    invoke-static {p2, p1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_d

    .line 129
    :cond_33
    invoke-static {v0, p2, p1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 152
    sget-object v0, Lme/piebridge/prevent/framework/a;->c:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 255
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lme/piebridge/prevent/framework/a;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for next service/broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lme/piebridge/prevent/framework/a;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {p0}, Lme/piebridge/prevent/framework/g;->n(Ljava/lang/String;)V

    .line 260
    :cond_37
    return-void
.end method

.method private static d(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-static {}, Lme/piebridge/prevent/framework/g;->e()Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account authenticator, current package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 137
    sget-object v2, Lme/piebridge/prevent/framework/a;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 138
    sget-object v2, Lme/piebridge/prevent/framework/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lme/piebridge/prevent/framework/a;->c:Ljava/util/Collection;

    invoke-static {v2, v3}, Lme/piebridge/prevent/framework/a;->a(Landroid/content/pm/PackageManager;Ljava/util/Collection;)V

    .line 140
    :cond_3c
    invoke-static {v1}, Lme/piebridge/prevent/framework/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-static {p2}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-static {v1}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 141
    :cond_4e
    invoke-static {p2}, Lme/piebridge/prevent/framework/a;->d(Ljava/lang/String;)V

    .line 142
    invoke-static {p2, v0}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;Z)V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(account)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 147
    :goto_6a
    return v0

    .line 146
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(account)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    goto :goto_6a
.end method

.method private static e(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 168
    invoke-static {p0, p3}, Lme/piebridge/prevent/framework/a;->a(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 170
    invoke-static {p2, v0}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;Z)V

    .line 171
    invoke-static {p2, p1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 175
    :goto_d
    return v0

    .line 174
    :cond_e
    invoke-static {v0, p2, p1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static f(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 243
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lme/piebridge/prevent/framework/a;->a:Landroid/content/Context;

    invoke-static {v1, p0}, Lme/piebridge/prevent/framework/a/a;->a(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 244
    invoke-static {p2}, Lme/piebridge/prevent/framework/a;->d(Ljava/lang/String;)V

    .line 245
    invoke-static {p2, v0}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/String;Z)V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(sync)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 250
    :goto_2b
    return v0

    .line 249
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(sync)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1, p0, p3}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    goto :goto_2b
.end method
