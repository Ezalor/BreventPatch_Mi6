.class public Lme/piebridge/prevent/framework/d;
.super Ljava/lang/Object;
.source "IntentFilterHook.java"


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


# direct methods
.method public static a(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;Ljava/lang/String;)Lme/piebridge/prevent/framework/e;
    .registers 6

    .prologue
    .line 112
    iget-object v0, p0, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    .line 113
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 114
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 115
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 116
    invoke-static {p0, v0, p1, p2}, Lme/piebridge/prevent/framework/d;->b(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lme/piebridge/prevent/framework/e;

    move-result-object v0

    .line 119
    :goto_14
    return-object v0

    :cond_15
    sget-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    goto :goto_14
.end method

.method private static a(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lme/piebridge/prevent/framework/e;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-static {v2, p1, p0, p2, p3}, Lme/piebridge/prevent/framework/a/h;->b(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lme/piebridge/prevent/framework/d;->b:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 67
    sget-object v0, Lme/piebridge/prevent/framework/d;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for next service/broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V

    .line 69
    invoke-static {p3}, Lme/piebridge/prevent/framework/g;->n(Ljava/lang/String;)V

    .line 71
    :cond_3a
    sget-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageParser$ServiceIntentInfo;Ljava/lang/String;Ljava/lang/String;)Lme/piebridge/prevent/framework/e;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    .line 152
    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    .line 153
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 154
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 155
    invoke-static {v0, p1, v2}, Lme/piebridge/prevent/framework/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 156
    invoke-static {v2, p1, p0, p2, v0}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    .line 167
    :goto_14
    return-object v0

    .line 159
    :cond_15
    invoke-static {p2}, Lme/piebridge/prevent/framework/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {v0, p2}, Lme/piebridge/prevent/framework/a/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 160
    :cond_21
    invoke-static {v2, p1, p0, p2, v0}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    goto :goto_14

    .line 162
    :cond_27
    invoke-static {v0}, Lme/piebridge/prevent/framework/g;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {p1}, Lme/piebridge/prevent/framework/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 163
    const/4 v1, 0x1

    invoke-static {v1, p1, p0, p2, v0}, Lme/piebridge/prevent/framework/a/h;->b(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lme/piebridge/prevent/framework/e;->b:Lme/piebridge/prevent/framework/e;

    goto :goto_14

    .line 166
    :cond_3a
    invoke-static {v2, p1, p0, p2, v0}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    goto :goto_14
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Lme/piebridge/prevent/framework/e;
    .registers 5

    .prologue
    .line 56
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/e;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_17

    sget-object v1, Lme/piebridge/prevent/framework/d;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 58
    const/4 v1, 0x1

    const-string v2, "(ignore)"

    invoke-static {v1, v2, p0, p1, v0}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lme/piebridge/prevent/framework/e;->b:Lme/piebridge/prevent/framework/e;

    .line 61
    :goto_16
    return-object v0

    :cond_17
    sget-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    goto :goto_16
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;)Lme/piebridge/prevent/framework/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lme/piebridge/prevent/framework/e;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p2, p1}, Lme/piebridge/prevent/framework/a/j;->a(Ljava/lang/Object;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 46
    sget-object v0, Lme/piebridge/prevent/framework/d;->b:Ljava/util/Map;

    invoke-static {p2, v0}, Lme/piebridge/prevent/framework/a/j;->a(Landroid/net/Uri;Ljava/util/Map;)Lme/piebridge/prevent/framework/e;

    move-result-object v0

    .line 52
    :goto_c
    return-object v0

    .line 47
    :cond_d
    invoke-static {p3}, Lme/piebridge/prevent/framework/a/d;->a(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 48
    invoke-static {p0}, Lme/piebridge/prevent/framework/a/d;->a(Ljava/lang/Object;)Lme/piebridge/prevent/framework/e;

    move-result-object v0

    goto :goto_c

    .line 49
    :cond_18
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 50
    invoke-static {p0, p1}, Lme/piebridge/prevent/framework/d;->a(Ljava/lang/Object;Ljava/lang/String;)Lme/piebridge/prevent/framework/e;

    move-result-object v0

    goto :goto_c

    .line 52
    :cond_25
    sget-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    goto :goto_c
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
    .line 36
    sput-object p1, Lme/piebridge/prevent/framework/d;->b:Ljava/util/Map;

    .line 37
    sput-object p0, Lme/piebridge/prevent/framework/d;->a:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static a(I)Z
    .registers 2

    .prologue
    .line 41
    if-ltz p0, :cond_e

    invoke-static {}, Lme/piebridge/prevent/framework/g;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lme/piebridge/prevent/framework/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 75
    if-eqz p0, :cond_a

    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 103
    invoke-static {p0}, Lme/piebridge/prevent/a/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lme/piebridge/prevent/framework/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/piebridge/prevent/a/e;->a(Landroid/content/Context;)Z

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

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 92
    invoke-static {p0, p2}, Lme/piebridge/prevent/framework/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_8

    .line 99
    :cond_7
    :goto_7
    return v0

    .line 94
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 96
    invoke-static {p0}, Lme/piebridge/prevent/framework/g;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 99
    :cond_1a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 79
    sget-object v0, Lme/piebridge/prevent/framework/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 80
    if-nez v0, :cond_3f

    .line 81
    sget-object v0, Lme/piebridge/prevent/framework/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 82
    if-eqz p1, :cond_3d

    invoke-static {p0}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 83
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

    .line 84
    invoke-static {p0}, Lme/piebridge/prevent/framework/g;->n(Ljava/lang/String;)V

    .line 86
    :cond_3d
    const/4 v0, 0x0

    .line 88
    :goto_3e
    return v0

    :cond_3f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3e
.end method

.method private static a(ZLjava/lang/String;)Z
    .registers 3

    .prologue
    .line 107
    if-eqz p0, :cond_a

    invoke-static {p1}, Lme/piebridge/prevent/framework/a/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static b(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lme/piebridge/prevent/framework/e;
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-static {p1, p2, v3}, Lme/piebridge/prevent/framework/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 125
    invoke-static {v2, p2, p0, p3, p1}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    .line 140
    :goto_d
    return-object v0

    .line 128
    :cond_e
    invoke-static {p2}, Lme/piebridge/prevent/framework/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 129
    invoke-static {p1, p2}, Lme/piebridge/prevent/framework/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 130
    invoke-static {v2, p2, p0, p3, p1}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    goto :goto_d

    .line 132
    :cond_1e
    invoke-static {p2, v0, p3}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 133
    invoke-static {p0, p2, p3, p1}, Lme/piebridge/prevent/framework/d;->a(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lme/piebridge/prevent/framework/e;

    move-result-object v0

    goto :goto_d

    .line 134
    :cond_29
    invoke-static {v0, p3}, Lme/piebridge/prevent/framework/d;->a(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 135
    invoke-static {v2, p2, p0, p3, p1}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    goto :goto_d

    .line 139
    :cond_35
    invoke-static {v3, p2, p0, p3, p1}, Lme/piebridge/prevent/framework/a/h;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lme/piebridge/prevent/framework/e;->b:Lme/piebridge/prevent/framework/e;

    goto :goto_d
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 144
    const-string v0, "android.content.SyncAdapter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "android.accounts.AccountAuthenticator"

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 146
    invoke-static {p0}, Lme/piebridge/prevent/a/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "android.nfc.cardemulation"

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    .line 144
    :goto_1f
    return v0

    .line 147
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
