module sldotfun::events {
    use sldotfun::event_wrapper::{Self, emit_event};

    // === Event Structs ===
    public struct NewAdmin has copy, drop {
        admin: address,
    }

    public(package) fun new_admin_event(admin: address) {
        let event_data = NewAdmin { admin };
        event_wrapper::emit_event<NewAdmin>(event_data);
    }
}   