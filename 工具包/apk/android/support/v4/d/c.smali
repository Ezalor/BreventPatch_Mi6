.class public final Landroid/support/v4/d/c;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/d/c$a;,
        Landroid/support/v4/d/c$d;,
        Landroid/support/v4/d/c$c;,
        Landroid/support/v4/d/c$e;,
        Landroid/support/v4/d/c$b;,
        Landroid/support/v4/d/c$f;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/d/c$f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 174
    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 175
    new-instance v0, Landroid/support/v4/d/c$a;

    invoke-direct {v0}, Landroid/support/v4/d/c$a;-><init>()V

    sput-object v0, Landroid/support/v4/d/c;->a:Landroid/support/v4/d/c$f;

    .line 185
    :goto_d
    return-void

    .line 176
    :cond_e
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1a

    .line 177
    new-instance v0, Landroid/support/v4/d/c$d;

    invoke-direct {v0}, Landroid/support/v4/d/c$d;-><init>()V

    sput-object v0, Landroid/support/v4/d/c;->a:Landroid/support/v4/d/c$f;

    goto :goto_d

    .line 178
    :cond_1a
    const/16 v1, 0x11

    if-lt v0, v1, :cond_26

    .line 179
    new-instance v0, Landroid/support/v4/d/c$c;

    invoke-direct {v0}, Landroid/support/v4/d/c$c;-><init>()V

    sput-object v0, Landroid/support/v4/d/c;->a:Landroid/support/v4/d/c$f;

    goto :goto_d

    .line 180
    :cond_26
    const/16 v1, 0x10

    if-lt v0, v1, :cond_32

    .line 181
    new-instance v0, Landroid/support/v4/d/c$e;

    invoke-direct {v0}, Landroid/support/v4/d/c$e;-><init>()V

    sput-object v0, Landroid/support/v4/d/c;->a:Landroid/support/v4/d/c$f;

    goto :goto_d

    .line 183
    :cond_32
    new-instance v0, Landroid/support/v4/d/c$b;

    invoke-direct {v0}, Landroid/support/v4/d/c$b;-><init>()V

    sput-object v0, Landroid/support/v4/d/c;->a:Landroid/support/v4/d/c$f;

    goto :goto_d
.end method

.method public static a(Landroid/widget/TextView;I)V
    .registers 3

    .prologue
    .line 278
    sget-object v0, Landroid/support/v4/d/c;->a:Landroid/support/v4/d/c$f;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/d/c$f;->a(Landroid/widget/TextView;I)V

    .line 279
    return-void
.end method
