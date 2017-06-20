.class final Landroid/support/v4/view/a$2;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/support/v4/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/c/c",
        "<",
        "Landroid/support/v4/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/a$2;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v4/view/a$2;->b(I)[Landroid/support/v4/view/a;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/a;
    .registers 5

    .prologue
    .line 90
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_e

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "superState must be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_e
    sget-object v0, Landroid/support/v4/view/a;->a:Landroid/support/v4/view/a;

    return-object v0
.end method

.method public b(I)[Landroid/support/v4/view/a;
    .registers 3

    .prologue
    .line 99
    new-array v0, p1, [Landroid/support/v4/view/a;

    return-object v0
.end method
