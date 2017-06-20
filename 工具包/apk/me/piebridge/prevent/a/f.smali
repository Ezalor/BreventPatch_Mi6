.class public Lme/piebridge/prevent/a/f;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/String;

.field private static final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lme/piebridge/prevent/a/f;->b:Ljava/util/Set;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "de.robv.android.xposed.installer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eu.chainfire.supersu"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eu.chainfire.supersu.pro"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "me.piebridge.prevent"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/a/f;->d:Ljava/util/Collection;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_b

    .line 95
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lme/piebridge/prevent/a/f;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 123
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 113
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 114
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 115
    if-nez v3, :cond_24

    move v1, v2

    .line 116
    :goto_10
    if-ge v2, v1, :cond_2a

    .line 117
    sget-object v4, Lme/piebridge/prevent/a/f;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 115
    :cond_24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_10

    .line 119
    :cond_2a
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/pm/PackageManager;)V
    .registers 5

    .prologue
    .line 54
    const-class v1, Lme/piebridge/prevent/a/f;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lme/piebridge/prevent/a/f;->a:Ljava/util/Set;

    if-nez v0, :cond_3c

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lme/piebridge/prevent/a/f;->a:Ljava/util/Set;

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 59
    sget-object v3, Lme/piebridge/prevent/a/f;->a:Ljava/util/Set;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_39

    goto :goto_23

    .line 54
    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0

    .line 62
    :cond_3c
    monitor-exit v1

    return-void
.end method

.method public static a(I)Z
    .registers 2

    .prologue
    .line 46
    and-int/lit16 v0, p0, 0x81

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 126
    if-nez p1, :cond_4

    .line 133
    :cond_3
    :goto_3
    return v0

    .line 129
    :cond_4
    sget-object v1, Lme/piebridge/prevent/a/f;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 130
    invoke-static {p0}, Lme/piebridge/prevent/a/f;->a(Landroid/content/Context;)V

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sms_default_application"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lme/piebridge/prevent/a/f;->c:Ljava/lang/String;

    .line 133
    :cond_1b
    sget-object v1, Lme/piebridge/prevent/a/f;->d:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 134
    invoke-static {p1}, Lme/piebridge/prevent/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    sget-object v1, Lme/piebridge/prevent/a/f;->c:Ljava/lang/String;

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_31
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    .prologue
    .line 72
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_16

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0}, Lme/piebridge/prevent/a/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0, p1}, Lme/piebridge/prevent/a/f;->b(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z

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

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 50
    const-string v0, "android"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 102
    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 106
    invoke-static {p0}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lme/piebridge/prevent/a/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_d
    return v0

    :cond_e
    sget-object v0, Lme/piebridge/prevent/a/f;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method private static b(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lme/piebridge/prevent/a/f;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    .line 88
    :cond_b
    :goto_b
    return v0

    .line 81
    :cond_c
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_b

    .line 84
    const-string v2, "me.piebridge.prevent"

    invoke-static {p0, v2}, Lme/piebridge/prevent/a/f;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 86
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_b

    .line 88
    :cond_23
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lme/piebridge/prevent/a/f;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_b
.end method

.method public static b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 65
    sget-object v0, Lme/piebridge/prevent/a/f;->a:Ljava/util/Set;

    if-nez v0, :cond_7

    .line 66
    invoke-static {p0}, Lme/piebridge/prevent/a/f;->a(Landroid/content/pm/PackageManager;)V

    .line 68
    :cond_7
    sget-object v0, Lme/piebridge/prevent/a/f;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
