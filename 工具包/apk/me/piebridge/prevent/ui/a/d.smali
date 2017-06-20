.class public Lme/piebridge/prevent/ui/a/d;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 45
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 46
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    :goto_e
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    .line 49
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    .line 51
    :cond_1a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 52
    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 6

    .prologue
    .line 22
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 23
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 25
    :goto_9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_14

    .line 26
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9

    .line 28
    :cond_14
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 29
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 30
    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/io/File;)V
    .registers 6

    .prologue
    .line 33
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 34
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 36
    :goto_9
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_14

    .line 37
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9

    .line 39
    :cond_14
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 41
    return-void
.end method
