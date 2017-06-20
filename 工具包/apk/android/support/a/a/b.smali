.class public Landroid/support/a/a/b;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/a/a/b$f;,
        Landroid/support/a/a/b$e;,
        Landroid/support/a/a/b$d;,
        Landroid/support/a/a/b$c;,
        Landroid/support/a/a/b$a;,
        Landroid/support/a/a/b$b;
    }
.end annotation


# static fields
.field static final a:Landroid/support/a/a/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 118
    invoke-static {}, Landroid/support/v4/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 119
    new-instance v0, Landroid/support/a/a/b$f;

    invoke-direct {v0}, Landroid/support/a/a/b$f;-><init>()V

    sput-object v0, Landroid/support/a/a/b;->a:Landroid/support/a/a/b$b;

    .line 129
    :goto_d
    return-void

    .line 120
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1c

    .line 121
    new-instance v0, Landroid/support/a/a/b$e;

    invoke-direct {v0}, Landroid/support/a/a/b$e;-><init>()V

    sput-object v0, Landroid/support/a/a/b;->a:Landroid/support/a/a/b$b;

    goto :goto_d

    .line 122
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2a

    .line 123
    new-instance v0, Landroid/support/a/a/b$d;

    invoke-direct {v0}, Landroid/support/a/a/b$d;-><init>()V

    sput-object v0, Landroid/support/a/a/b;->a:Landroid/support/a/a/b$b;

    goto :goto_d

    .line 124
    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_38

    .line 125
    new-instance v0, Landroid/support/a/a/b$c;

    invoke-direct {v0}, Landroid/support/a/a/b$c;-><init>()V

    sput-object v0, Landroid/support/a/a/b;->a:Landroid/support/a/a/b$b;

    goto :goto_d

    .line 127
    :cond_38
    new-instance v0, Landroid/support/a/a/b$a;

    invoke-direct {v0}, Landroid/support/a/a/b$a;-><init>()V

    sput-object v0, Landroid/support/a/a/b;->a:Landroid/support/a/a/b$b;

    goto :goto_d
.end method

.method public static a(Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 159
    sget-object v0, Landroid/support/a/a/b;->a:Landroid/support/a/a/b$b;

    invoke-interface {v0, p0, p1}, Landroid/support/a/a/b$b;->a(Landroid/app/Fragment;Z)V

    .line 160
    return-void
.end method

.method public static b(Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 167
    sget-object v0, Landroid/support/a/a/b;->a:Landroid/support/a/a/b$b;

    invoke-interface {v0, p0, p1}, Landroid/support/a/a/b$b;->b(Landroid/app/Fragment;Z)V

    .line 168
    return-void
.end method
