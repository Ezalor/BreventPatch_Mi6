.class public final Landroid/support/v4/view/e;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/e$b;,
        Landroid/support/v4/view/e$a;,
        Landroid/support/v4/view/e$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/e$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 130
    new-instance v0, Landroid/support/v4/view/e$b;

    invoke-direct {v0}, Landroid/support/v4/view/e$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/e;->a:Landroid/support/v4/view/e$c;

    .line 134
    :goto_d
    return-void

    .line 132
    :cond_e
    new-instance v0, Landroid/support/v4/view/e$a;

    invoke-direct {v0}, Landroid/support/v4/view/e$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/e;->a:Landroid/support/v4/view/e$c;

    goto :goto_d
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .registers 3

    .prologue
    .line 155
    sget-object v0, Landroid/support/v4/view/e;->a:Landroid/support/v4/view/e$c;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/e$c;->b(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;I)Z
    .registers 4

    .prologue
    .line 151
    sget-object v0, Landroid/support/v4/view/e;->a:Landroid/support/v4/view/e$c;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/e$c;->a(II)Z

    move-result v0

    return v0
.end method
