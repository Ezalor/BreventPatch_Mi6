.class public Lme/piebridge/prevent/ui/PreventProvider;
.super Landroid/content/ContentProvider;
.source "PreventProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 37
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v1, "offset"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    if-nez v0, :cond_10

    .line 40
    const-string v0, "logcat.log"

    .line 42
    :cond_10
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 43
    if-nez v2, :cond_17

    .line 62
    :goto_16
    return-void

    .line 46
    :cond_17
    const-string v3, "boot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 47
    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/a/d;->b(Ljava/io/File;)Z

    .line 49
    :cond_2e
    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 50
    if-nez v1, :cond_3a

    .line 51
    const-string v0, "cannot find external file"

    invoke-static {v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;)V

    goto :goto_16

    .line 54
    :cond_3a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    :try_start_3f
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 57
    const/16 v1, 0xa

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 58
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_51} :catch_52

    goto :goto_16

    .line 59
    :catch_52
    move-exception v0

    .line 60
    const-string v1, "cannot save log"

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 29
    const-string v0, "log"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_b

    .line 31
    invoke-direct {p0, p1, v0}, Lme/piebridge/prevent/ui/PreventProvider;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 33
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method
