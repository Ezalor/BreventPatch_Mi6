.class public Lme/piebridge/prevent/a/b;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static b:Lme/piebridge/prevent/a/b;


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lme/piebridge/prevent/a/b;

    invoke-direct {v0}, Lme/piebridge/prevent/a/b;-><init>()V

    sput-object v0, Lme/piebridge/prevent/a/b;->b:Lme/piebridge/prevent/a/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/a/b;->a:Landroid/os/Bundle;

    .line 16
    return-void
.end method

.method public static a()Lme/piebridge/prevent/a/b;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lme/piebridge/prevent/a/b;->b:Lme/piebridge/prevent/a/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 55
    sget-object v2, Lme/piebridge/prevent/a/g;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_3b

    aget-object v4, v2, v1

    .line 56
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 57
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lme/piebridge/prevent/a/a;->a(Ljava/lang/String;)V

    .line 59
    iget-object v5, p0, Lme/piebridge/prevent/a/b;->a:Landroid/os/Bundle;

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 55
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 62
    :cond_3b
    sget-object v1, Lme/piebridge/prevent/a/g;->b:[Ljava/lang/String;

    array-length v2, v1

    :goto_3e
    if-ge v0, v2, :cond_74

    aget-object v3, v1, v0

    .line 63
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 64
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lme/piebridge/prevent/a/a;->a(Ljava/lang/String;)V

    .line 66
    iget-object v5, p0, Lme/piebridge/prevent/a/b;->a:Landroid/os/Bundle;

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 69
    :cond_74
    return-void
.end method

.method public b()J
    .registers 5

    .prologue
    .line 23
    iget-object v0, p0, Lme/piebridge/prevent/a/b;->a:Landroid/os/Bundle;

    const-string v1, "force_stop_timeout"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .registers 4

    .prologue
    .line 27
    iget-object v0, p0, Lme/piebridge/prevent/a/b;->a:Landroid/os/Bundle;

    const-string v1, "allow_empty_sender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 4

    .prologue
    .line 31
    iget-object v0, p0, Lme/piebridge/prevent/a/b;->a:Landroid/os/Bundle;

    const-string v1, "auto_prevent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 4

    .prologue
    .line 35
    iget-object v0, p0, Lme/piebridge/prevent/a/b;->a:Landroid/os/Bundle;

    const-string v1, "destroy_processes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lme/piebridge/prevent/a/b;->a:Landroid/os/Bundle;

    const-string v1, "lock_sync_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lme/piebridge/prevent/a/b;->a:Landroid/os/Bundle;

    const-string v1, "stop_signature_apps"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lme/piebridge/prevent/a/b;->a:Landroid/os/Bundle;

    const-string v1, "use_app_standby"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 51
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lme/piebridge/prevent/a/b;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
