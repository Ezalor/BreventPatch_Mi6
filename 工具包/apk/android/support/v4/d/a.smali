.class public final Landroid/support/v4/d/a;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/d/a$d;,
        Landroid/support/v4/d/a$b;,
        Landroid/support/v4/d/a$a;,
        Landroid/support/v4/d/a$c;
    }
.end annotation


# static fields
.field private static final b:Landroid/support/v4/d/a$c;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 38
    new-instance v0, Landroid/support/v4/d/a$d;

    invoke-direct {v0}, Landroid/support/v4/d/a$d;-><init>()V

    sput-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a$c;

    .line 44
    :goto_d
    return-void

    .line 39
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1c

    .line 40
    new-instance v0, Landroid/support/v4/d/a$b;

    invoke-direct {v0}, Landroid/support/v4/d/a$b;-><init>()V

    sput-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a$c;

    goto :goto_d

    .line 42
    :cond_1c
    new-instance v0, Landroid/support/v4/d/a$a;

    invoke-direct {v0}, Landroid/support/v4/d/a$a;-><init>()V

    sput-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a$c;

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a$c;

    invoke-interface {v0, p1}, Landroid/support/v4/d/a$c;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    .line 170
    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 5

    .prologue
    .line 179
    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a$c;

    iget-object v1, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/d/a$c;->a(Ljava/lang/Object;II)V

    .line 180
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 190
    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a$c;

    iget-object v1, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/d/a$c;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(F)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a$c;

    iget-object v1, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/d/a$c;->a(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .registers 4

    .prologue
    .line 274
    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a$c;

    iget-object v1, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/d/a$c;->a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 198
    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a$c;

    iget-object v1, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/d/a$c;->b(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 245
    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a$c;

    iget-object v1, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/d/a$c;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
