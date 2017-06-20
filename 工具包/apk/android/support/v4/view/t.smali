.class public Landroid/support/v4/view/t;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/t$b;,
        Landroid/support/v4/view/t$a;,
        Landroid/support/v4/view/t$c;,
        Landroid/support/v4/view/t$d;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/view/t$d;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 255
    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 256
    new-instance v0, Landroid/support/v4/view/t$b;

    invoke-direct {v0}, Landroid/support/v4/view/t$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/t;->a:Landroid/support/v4/view/t$d;

    .line 262
    :goto_d
    return-void

    .line 257
    :cond_e
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1a

    .line 258
    new-instance v0, Landroid/support/v4/view/t$a;

    invoke-direct {v0}, Landroid/support/v4/view/t$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/t;->a:Landroid/support/v4/view/t$d;

    goto :goto_d

    .line 260
    :cond_1a
    new-instance v0, Landroid/support/v4/view/t$c;

    invoke-direct {v0}, Landroid/support/v4/view/t$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/t;->a:Landroid/support/v4/view/t$d;

    goto :goto_d
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    .line 268
    return-void
.end method

.method static a(Ljava/lang/Object;)Landroid/support/v4/view/t;
    .registers 2

    .prologue
    .line 523
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Landroid/support/v4/view/t;

    invoke-direct {v0, p0}, Landroid/support/v4/view/t;-><init>(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method static a(Landroid/support/v4/view/t;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 527
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 289
    sget-object v0, Landroid/support/v4/view/t;->a:Landroid/support/v4/view/t$d;

    iget-object v1, p0, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/t$d;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(IIII)Landroid/support/v4/view/t;
    .registers 11

    .prologue
    .line 404
    sget-object v0, Landroid/support/v4/view/t;->a:Landroid/support/v4/view/t$d;

    iget-object v1, p0, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/t$d;->a(Ljava/lang/Object;IIII)Landroid/support/v4/view/t;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 302
    sget-object v0, Landroid/support/v4/view/t;->a:Landroid/support/v4/view/t$d;

    iget-object v1, p0, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/t$d;->d(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 3

    .prologue
    .line 315
    sget-object v0, Landroid/support/v4/view/t;->a:Landroid/support/v4/view/t$d;

    iget-object v1, p0, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/t$d;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 3

    .prologue
    .line 328
    sget-object v0, Landroid/support/v4/view/t;->a:Landroid/support/v4/view/t$d;

    iget-object v1, p0, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/t$d;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 367
    sget-object v0, Landroid/support/v4/view/t;->a:Landroid/support/v4/view/t$d;

    iget-object v1, p0, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/t$d;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 507
    if-ne p0, p1, :cond_5

    .line 514
    :cond_4
    :goto_4
    return v0

    .line 510
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 511
    goto :goto_4

    .line 513
    :cond_13
    check-cast p1, Landroid/support/v4/view/t;

    .line 514
    iget-object v2, p0, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    if-nez v2, :cond_1f

    iget-object v2, p1, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v0, p0, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/t;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method
