.class final Landroid/support/v4/view/c$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompatIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/c;->a(Landroid/support/v4/view/c$a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/c$a;


# direct methods
.method constructor <init>(Landroid/support/v4/view/c$a;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Landroid/support/v4/view/c$1;->a:Landroid/support/v4/view/c$a;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/view/c$1;->a:Landroid/support/v4/view/c$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/c$a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v4/view/c$1;->a:Landroid/support/v4/view/c$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/c$a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 55
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/view/c$1;->a:Landroid/support/v4/view/c$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/c$a;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/view/c$1;->a:Landroid/support/v4/view/c$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/c$a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 65
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v4/view/c$1;->a:Landroid/support/v4/view/c$a;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/c$a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v4/view/c$1;->a:Landroid/support/v4/view/c$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/c$a;->a(Landroid/view/View;I)V

    .line 76
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v4/view/c$1;->a:Landroid/support/v4/view/c$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/c$a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 81
    return-void
.end method
