.class public Lme/piebridge/prevent/framework/a/o;
.super Ljava/lang/Object;
.source "SafeActionUtils.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Landroid/content/ComponentName;

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/a/o;->a:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/a/o;->b:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/a/o;->c:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/a/o;->d:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/a/o;->e:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/a/o;->f:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lme/piebridge/prevent/framework/a/o;->g:Ljava/util/Set;

    .line 45
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->f:Ljava/util/Map;

    const-string v1, "com.eg.android.AlipayGphone"

    const-string v2, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->f:Ljava/util/Map;

    const-string v1, "com.android.vending"

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->g:Ljava/util/Set;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.plugin.base.stub.MMPluginProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_9

    move-object v0, v1

    .line 221
    :goto_8
    return-object v0

    .line 210
    :cond_9
    const-string v0, "search"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 213
    :try_start_11
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_14} :catch_19

    move-result-object v0

    .line 218
    if-nez v0, :cond_21

    move-object v0, v1

    .line 219
    goto :goto_8

    .line 214
    :catch_19
    move-exception v0

    .line 215
    const-string v2, "cannot get search activity"

    invoke-static {v2, v0}, Lme/piebridge/prevent/framework/f;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 216
    goto :goto_8

    .line 221
    :cond_21
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lme/piebridge/prevent/framework/a/o;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_8
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v3

    .line 227
    if-nez v3, :cond_d

    move-object v0, v1

    .line 241
    :goto_c
    return-object v0

    .line 230
    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 231
    const/4 v0, 0x0

    move v2, v0

    :goto_13
    if-ge v2, v4, :cond_34

    .line 232
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 233
    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_25

    .line 231
    :cond_21
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    .line 236
    :cond_25
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 237
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_c

    :cond_34
    move-object v0, v1

    .line 241
    goto :goto_c
.end method

.method public static a(Landroid/content/ComponentName;Z)V
    .registers 4

    .prologue
    .line 148
    if-eqz p0, :cond_52

    .line 149
    if-eqz p1, :cond_53

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add widget "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V

    .line 151
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    :goto_23
    sget-boolean v0, Lme/piebridge/prevent/framework/a/o;->i:Z

    if-nez v0, :cond_52

    invoke-static {}, Lme/piebridge/prevent/framework/g;->m()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 157
    invoke-static {}, Lme/piebridge/prevent/framework/g;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/a/o;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/framework/a/o;->h:Landroid/content/ComponentName;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "search widget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lme/piebridge/prevent/framework/a/o;->h:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    sput-boolean v0, Lme/piebridge/prevent/framework/a/o;->i:Z

    .line 162
    :cond_52
    return-void

    .line 153
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove widget "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_23
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 55
    if-eqz p0, :cond_15

    .line 56
    sget-object v1, Lme/piebridge/prevent/framework/a/o;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_5
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v1

    .line 62
    :cond_15
    return-void

    .line 60
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Landroid/content/ComponentName;)Z
    .registers 2

    .prologue
    .line 82
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->h:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lme/piebridge/prevent/framework/a/o;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 4

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check sync adapter for service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;)V

    .line 105
    const-string v0, "android.content.SyncAdapter"

    invoke-static {p0, p1, v0}, Lme/piebridge/prevent/framework/a/o;->c(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 106
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->b:Ljava/util/Map;

    invoke-static {v0, p1}, Lme/piebridge/prevent/framework/a/o;->a(Ljava/util/Map;Landroid/content/ComponentName;)Z

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 86
    invoke-static {p2}, Lme/piebridge/prevent/framework/g;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lme/piebridge/prevent/framework/a/o;->b:Ljava/util/Map;

    invoke-static {v0, p1}, Lme/piebridge/prevent/framework/a/o;->b(Ljava/util/Map;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_e
    invoke-static {p0, p1}, Lme/piebridge/prevent/framework/a/o;->a(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 192
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 193
    if-eqz v0, :cond_12

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static a(Ljava/util/Map;Landroid/content/ComponentName;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as safe component"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 67
    if-nez v1, :cond_28

    .line 68
    const/4 v0, 0x0

    .line 78
    :goto_27
    return v0

    .line 70
    :cond_28
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 71
    if-nez v0, :cond_42

    .line 72
    sget-object v2, Lme/piebridge/prevent/framework/a/o;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 73
    :try_start_33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 75
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_47

    .line 77
    :cond_42
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v0, 0x1

    goto :goto_27

    .line 75
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0
.end method

.method public static b(Landroid/content/ComponentName;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 197
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_26

    .line 198
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0, v0, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_26

    const-string v2, "android.permission.BIND_JOB_SERVICE"

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "android.permission.BIND_VOICE_INTERACTION"

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_25
    const/4 v0, 0x1

    .line 202
    :cond_26
    return v0
.end method

.method public static b(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 166
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->d:Ljava/util/Map;

    invoke-static {v0, p1}, Lme/piebridge/prevent/framework/a/o;->b(Ljava/util/Map;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 167
    invoke-static {v3}, Lme/piebridge/prevent/framework/a/o;->c(Ljava/lang/String;)V

    move v0, v1

    .line 181
    :goto_12
    return v0

    .line 170
    :cond_13
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->f:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 171
    if-nez v0, :cond_1f

    move v0, v2

    .line 172
    goto :goto_12

    .line 174
    :cond_1f
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    invoke-static {p0, p1, v0}, Lme/piebridge/prevent/framework/a/o;->c(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 176
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->d:Ljava/util/Map;

    invoke-static {v0, p1}, Lme/piebridge/prevent/framework/a/o;->a(Ljava/util/Map;Landroid/content/ComponentName;)Z

    .line 177
    invoke-static {v3}, Lme/piebridge/prevent/framework/a/o;->c(Ljava/lang/String;)V

    move v0, v1

    .line 178
    goto :goto_12

    :cond_3f
    move v0, v2

    .line 181
    goto :goto_12
.end method

.method public static b(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 90
    invoke-static {p2}, Lme/piebridge/prevent/framework/g;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lme/piebridge/prevent/framework/a/o;->c:Ljava/util/Map;

    invoke-static {v0, p1}, Lme/piebridge/prevent/framework/a/o;->b(Ljava/util/Map;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_e
    invoke-static {p0, p1}, Lme/piebridge/prevent/framework/a/o;->c(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    if-nez p0, :cond_6

    move v0, v1

    .line 144
    :cond_5
    :goto_5
    return v0

    .line 141
    :cond_6
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    invoke-static {v2, v1, p0}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 144
    const-string v2, "android.intent.action"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_27
    move v0, v1

    goto :goto_5
.end method

.method private static b(Ljava/util/Map;Landroid/content/ComponentName;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 130
    if-nez v0, :cond_8

    .line 134
    :goto_7
    return v1

    .line 133
    :cond_8
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 134
    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_17
    move v1, v0

    goto :goto_7

    :cond_19
    move v0, v1

    goto :goto_17
.end method

.method private static c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 185
    invoke-static {p0}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to use gms for next service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 187
    invoke-static {p0}, Lme/piebridge/prevent/framework/g;->n(Ljava/lang/String;)V

    .line 189
    :cond_25
    return-void
.end method

.method public static c(Landroid/content/ComponentName;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 245
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1c

    .line 246
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0, v0, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_1c

    const-string v2, "android.permission.BIND_NFC_SERVICE"

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    .line 249
    :cond_1c
    return v0
.end method

.method private static c(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 4

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check account authenticator for service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->a(Ljava/lang/String;)V

    .line 95
    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-static {p0, p1, v0}, Lme/piebridge/prevent/framework/a/o;->c(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 96
    sget-object v0, Lme/piebridge/prevent/framework/a/o;->c:Ljava/util/Map;

    invoke-static {v0, p1}, Lme/piebridge/prevent/framework/a/o;->a(Ljava/util/Map;Landroid/content/ComponentName;)Z

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static c(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 118
    if-nez v4, :cond_37

    move v1, v2

    :goto_1b
    move v3, v2

    .line 119
    :goto_1c
    if-ge v3, v1, :cond_36

    .line 120
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 121
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 122
    const/4 v2, 0x1

    .line 125
    :cond_36
    return v2

    .line 118
    :cond_37
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_1b

    .line 119
    :cond_3d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1c
.end method

.method public static d(Landroid/content/ComponentName;)Z
    .registers 3

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 255
    sget-object v1, Lme/piebridge/prevent/framework/a/o;->g:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {v0}, Lme/piebridge/prevent/framework/g;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
