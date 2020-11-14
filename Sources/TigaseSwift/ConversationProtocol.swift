//
// ConversationProtocol.swift
//
// TigaseSwift
// Copyright (C) 2020 "Tigase, Inc." <office@tigase.com>
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License,
// or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program. Look for COPYING file in the top folder.
// If not, see http://www.gnu.org/licenses/.
//

import Foundation

public protocol ConversationProtocol: class {

    var context: Context? { get }
    var account: BareJID { get }
    var jid: JID { get }
    
}

public protocol LastMessageTimestampAware {
    
    var lastMessageTimestamp: Date? { get }
    
}

public enum ConversationCreateResult<Conversation> {
    case created(Conversation)
    case found(Conversation)
    case none
}
