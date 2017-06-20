.class public final Lme/piebridge/prevent/a/g;
.super Ljava/lang/Object;
.source "PreventIntent.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "force_stop_timeout"

    aput-object v1, v0, v2

    sput-object v0, Lme/piebridge/prevent/a/g;->a:[Ljava/lang/String;

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "allow_empty_sender"

    aput-object v1, v0, v2

    const-string v1, "destroy_processes"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "lock_sync_settings"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "auto_prevent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "stop_signature_apps"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "use_app_standby"

    aput-object v2, v0, v1

    sput-object v0, Lme/piebridge/prevent/a/g;->b:[Ljava/lang/String;

    .line 58
    const-string v0, "content://me.piebridge.prevent.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/a/g;->c:Landroid/net/Uri;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 76
    sget-object v0, Lme/piebridge/prevent/a/g;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lme/piebridge/prevent/a/g;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 67
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p1, v1

    .line 68
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 69
    const/4 v0, 0x1

    .line 72
    :cond_e
    return v0

    .line 67
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 80
    sget-object v0, Lme/piebridge/prevent/a/g;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lme/piebridge/prevent/a/g;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
