.class Landroid/support/v4/c/e;
.super Ljava/lang/Object;
.source "ParcelableCompatHoneycombMR2.java"


# direct methods
.method static a(Landroid/support/v4/c/c;)Landroid/os/Parcelable$Creator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/c/c",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Landroid/support/v4/c/d;

    invoke-direct {v0, p0}, Landroid/support/v4/c/d;-><init>(Landroid/support/v4/c/c;)V

    return-object v0
.end method
