.class public final Landroid/support/v4/view/m;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/m$b;,
        Landroid/support/v4/view/m$a;,
        Landroid/support/v4/view/m$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/m$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 68
    new-instance v0, Landroid/support/v4/view/m$b;

    invoke-direct {v0}, Landroid/support/v4/view/m$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/m$c;

    .line 72
    :goto_d
    return-void

    .line 70
    :cond_e
    new-instance v0, Landroid/support/v4/view/m$a;

    invoke-direct {v0}, Landroid/support/v4/view/m$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/m$c;

    goto :goto_d
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .registers 3

    .prologue
    .line 82
    sget-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/m$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/m$c;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
