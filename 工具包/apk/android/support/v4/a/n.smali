.class public final Landroid/support/v4/a/n;
.super Landroid/support/v4/a/p$a;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/a/n$b;,
        Landroid/support/v4/a/n$d;,
        Landroid/support/v4/a/n$c;,
        Landroid/support/v4/a/n$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/support/v4/a/p$a$a;

.field private static final g:Landroid/support/v4/a/n$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/CharSequence;

.field private final d:[Ljava/lang/CharSequence;

.field private final e:Z

.field private final f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_15

    .line 262
    new-instance v0, Landroid/support/v4/a/n$b;

    invoke-direct {v0}, Landroid/support/v4/a/n$b;-><init>()V

    sput-object v0, Landroid/support/v4/a/n;->g:Landroid/support/v4/a/n$a;

    .line 272
    :goto_d
    new-instance v0, Landroid/support/v4/a/n$1;

    invoke-direct {v0}, Landroid/support/v4/a/n$1;-><init>()V

    sput-object v0, Landroid/support/v4/a/n;->a:Landroid/support/v4/a/p$a$a;

    return-void

    .line 263
    :cond_15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_23

    .line 264
    new-instance v0, Landroid/support/v4/a/n$d;

    invoke-direct {v0}, Landroid/support/v4/a/n$d;-><init>()V

    sput-object v0, Landroid/support/v4/a/n;->g:Landroid/support/v4/a/n$a;

    goto :goto_d

    .line 266
    :cond_23
    new-instance v0, Landroid/support/v4/a/n$c;

    invoke-direct {v0}, Landroid/support/v4/a/n$c;-><init>()V

    sput-object v0, Landroid/support/v4/a/n;->g:Landroid/support/v4/a/n$a;

    goto :goto_d
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/a/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v4/a/n;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v4/a/n;->d:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/support/v4/a/n;->e:Z

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v4/a/n;->f:Landroid/os/Bundle;

    return-object v0
.end method
