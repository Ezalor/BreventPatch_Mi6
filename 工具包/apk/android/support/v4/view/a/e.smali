.class public Landroid/support/v4/view/a/e;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/a/e$c;,
        Landroid/support/v4/view/a/e$b;,
        Landroid/support/v4/view/a/e$d;,
        Landroid/support/v4/view/a/e$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/view/a/e$a;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    .line 162
    new-instance v0, Landroid/support/v4/view/a/e$c;

    invoke-direct {v0}, Landroid/support/v4/view/a/e$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/e;->a:Landroid/support/v4/view/a/e$a;

    .line 168
    :goto_d
    return-void

    .line 163
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    .line 164
    new-instance v0, Landroid/support/v4/view/a/e$b;

    invoke-direct {v0}, Landroid/support/v4/view/a/e$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/e;->a:Landroid/support/v4/view/a/e$a;

    goto :goto_d

    .line 166
    :cond_1c
    new-instance v0, Landroid/support/v4/view/a/e$d;

    invoke-direct {v0}, Landroid/support/v4/view/a/e$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/e;->a:Landroid/support/v4/view/a/e$a;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    sget-object v0, Landroid/support/v4/view/a/e;->a:Landroid/support/v4/view/a/e$a;

    invoke-interface {v0, p0}, Landroid/support/v4/view/a/e$a;->a(Landroid/support/v4/view/a/e;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/a/e;->b:Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Landroid/support/v4/view/a/e;->b:Ljava/lang/Object;

    .line 185
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/view/a/b;
    .registers 3

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v4/view/a/e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Landroid/support/v4/view/a/b;
    .registers 3

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method
